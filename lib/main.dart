import 'dart:developer';

import 'package:wqi_program/src/models/sample_model.dart';

import 'src/funcs.dart';
import 'src/utils.dart';

startCalculation() {
  List<double> qualityRatingList = [];
  List<double> subIndexList = [];
  final a = qualityRatingIndexFunc(8.12, 5);
  log("Quality rating is: $a");
  final b = subIndexFunc(0.2, a);
  log("SubIndex is $b");
  //    for (int i = 0; i < samples.rweight.length; i++) {
  //   final qaulityRating = w.qualityRating(
  //       samples.samples[0].params[i].ap, samples.rweight[i].si!,
  //       isPh: samples.samples[0].params[i].name == 'ph');
  //   // qualityRatingList.add(qaulityRating.toPrecision(3));
  //   // print(
  //   //     '${samples.rweight[i].rw} - $qaulityRating  is : ${samples.rweight[i].rw * qaulityRating}');
  //   final subIndex = w.subIndex(samples.rweight[i].rw, qaulityRating);

  //   subIndexList.add(subIndex.truncateToDecimalPlaces(3));

  //   print(
  //       "Quality rating for ${samples.samples[0].name} and parameter ${samples.rweight[i].name} is: ${qaulityRating} and Subindex is: ${subIndex}");
  // }

//   //assert(subIndexList.length == 10 && qualityRatingList.length == 10);
//   print(subIndexList);
//   final b = w.wqi(subIndexList);
//   print("WQI: $b");
//   for (int i = 0; i < samples.samples.length; i++) {
//     final cal = samples.samples[i].params.singleWhere((e) => e.name == 'ca').ap;
//     final mag = samples.samples[i].params.singleWhere((e) => e.name == 'mg').ap;
//     final hco =
//         samples.samples[i].params.singleWhere((e) => e.name == 'hco3').ap;
//     final so4 =
//         samples.samples[i].params.singleWhere((e) => e.name == 'so4').ap;
//     final nai = samples.samples[i].params.singleWhere((e) => e.name == 'na').ap;
//     final clh = samples.samples[i].params.singleWhere((e) => e.name == 'cl').ap;
//     final kp = samples.samples[i].params.singleWhere((e) => e.name == 'cl').ap;
//     final ionicRatios = w.ionicRatio(cal, mag, hco, so4, nai, clh);
//     print("IONIC RATIOS FOR ${samples.samples[i].name} IS: $ionicRatios");
//   }
}
