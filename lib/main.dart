import 'package:wqi_program/src/models/relative_weight_model.dart';
import 'package:wqi_program/src/models/sample_model.dart';

import 'src/funcs.dart';

startCalculation(List<Rweight> rweight, List<Params> params) async {
  final qualityRatingMap = {};
  final sunIndexMap = {};

  List<double> qualityRatingList = [];
  List<double> subIndexList = [];

  assert(rweight.length == 10 && params.length == 13);
  for (int i = 0; i < 10; i++) {
    double qualityRating = await qualityRatingIndexFunc(
      params[i].analyzedParamter,
      rweight[i].permissibleLimits,
      isPh: params[i].name == "ph",
    );
    qualityRatingMap.addAll({params[i].name: qualityRating});
    qualityRatingList.add(qualityRating);
    // qualityRating = qualityRating.toPrecision(3);
    print("a $qualityRating");
    final subIndex =
        await subIndexFunc(rweight[i].relativeWeight, qualityRating);
    sunIndexMap.addAll({params[i].name: subIndex});
    subIndexList.add(subIndex);
  }
  print("QUALITY RATING LIST: $qualityRatingList");
  print("SUBINDEX LIST: $subIndexList");
  double sumOfRelativeWeight = 0.0;

  for (int i = 0; i < rweight.length; i++) {
    sumOfRelativeWeight += rweight[i].relativeWeight;
  }

  print("SUM OF RELATIVEWEIGHT: $sumOfRelativeWeight");

  final sumOfSubindex = await sumOfSubindexFunc(subIndexList);
  print("SUM OF SUB INDEX: $sumOfSubindex");

  final wqi = await waterQualityIndexFunc(sumOfSubindex, sumOfRelativeWeight);
  print("WQI: $wqi");

//Calculation of other Values
  final cal = params.singleWhere((e) => e.name == 'ca').analyzedParamter;
  final mag = params.singleWhere((e) => e.name == 'mg').analyzedParamter;
  final hco = params.singleWhere((e) => e.name == 'hco3').analyzedParamter;
  final so4 = params.singleWhere((e) => e.name == 'so4').analyzedParamter;
  final nai = params.singleWhere((e) => e.name == 'na').analyzedParamter;
  final chloride = params.singleWhere((e) => e.name == 'cl').analyzedParamter;
  final kp = params.singleWhere((e) => e.name == 'k').analyzedParamter;
  final co3 = params.singleWhere((e) => e.name == 'co3').analyzedParamter;
  final ionicRatios = await ionicRatiosFunc(cal, mag, hco, so4, nai, chloride);
  final industrialUse =
      await industrialUseFunc(hco, so4, nai, chloride, kp, co3);
  final irrigationUse = await irrigationUseFunc(nai, mag, cal, kp, hco);
  final geoChemicalIndices =
      await geeoChemicalIndicesFunc(nai, chloride, so4, kp);

  print("IONIC RATIOS  $ionicRatios");

  return {
    "Quality Rating": qualityRatingMap,
    "Sub Index": sunIndexMap,
    "Sum of Sub Index": sumOfSubindex,
    "Sum Relative Weight": sumOfRelativeWeight,
    "WQI": wqi,
    "Ionic Ratios": ionicRatios,
    "Industrial Use": industrialUse,
    "Irrigation Use": irrigationUse,
    "Geochemical Indices": geoChemicalIndices
  };
}
