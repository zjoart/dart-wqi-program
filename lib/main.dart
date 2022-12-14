import 'dart:convert';

import 'package:wqi_program/src/models/relative_weight_model.dart';
import 'package:wqi_program/src/models/sample_model.dart';
import 'package:wqi_program/src/utils.dart';

import 'src/functions/funcs.dart';

Future<Map<String, dynamic>> startCalculation(
    List<Rweight> rweight, List<Params> params) async {
  final qualityRatingMap = {};
  final sunIndexMap = {};

  List<double> qualityRatingList = [];
  List<double> subIndexList = [];
  int weightTotal = 0;
  List<double> relativeWeightList = [];
  // print(rweight.length);
  // print(params.length);
  assert(rweight.length == 12 && params.length == 13);
  for (int i = 0; i < rweight.length; i++) {
    weightTotal += rweight[i].weight;
  }
  print("Weight total: $weightTotal");
  for (int i = 0; i < rweight.length; i++) {
    double qualityRating = await qualityRatingIndexFunc(
      params[i].analyzedParamter,
      rweight[i].permissibleLimits,
      isPh: params[i].name == "ph",
    );
    qualityRatingMap.addAll({params[i].name: qualityRating});
    qualityRatingList.add(qualityRating);
    // qualityRating = qualityRating.toPrecision(3);
    // print("a $qualityRating");
    final relativeWeight =
        (rweight[i].weight / weightTotal).truncateToDecimalPlaces(3);
    print("relative weight for ${params[i].name}: $relativeWeight ");
    relativeWeightList.add(relativeWeight);
    final subIndex = await subIndexFunc(relativeWeight, qualityRating);
    sunIndexMap.addAll({params[i].name: subIndex});
    subIndexList.add(subIndex);
  }
  // print("QUALITY RATING LIST: $qualityRatingList");
  // print("SUBINDEX LIST: $subIndexList");
  double sumOfRelativeWeight = 0.0;
  assert(relativeWeightList.length == 12);
  for (int i = 0; i < relativeWeightList.length; i++) {
    sumOfRelativeWeight += relativeWeightList[i];
  }

  print("SUM OF RELATIVEWEIGHT: $sumOfRelativeWeight");

  final sumOfSubindex = await sumOfSubindexFunc(subIndexList);
  // print("SUM OF SUB INDEX: $sumOfSubindex");

  final wqi = await waterQualityIndexFunc(sumOfSubindex, sumOfRelativeWeight);
  // print("WQI: $wqi");

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

  //print("IONIC RATIOS  $ionicRatios");

  return {
    "qualityRatingModel": qualityRatingMap,
    "subIndexModel": sunIndexMap,
    "sumofSubIndex": sumOfSubindex,
    "sumOfRelativeWeight": sumOfRelativeWeight,
    "waterQualityIndex": wqi,
    "ionicRatioModel": ionicRatios,
    "industrialUseModel": industrialUse,
    "irrigationUseModel": irrigationUse,
    "geoChemicalIndicesModel": geoChemicalIndices
  };
}
