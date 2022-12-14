import 'dart:math';

import 'package:wqi_program/src/utils.dart';

qualityRatingIndexFunc(ci, si, {bool isPh = false, bool isDo = false}) async {
  double result;
  if (isPh) {
    print("IS PH: TRUE");
    result = (((ci - 7.0) / (1.5)) * 100);
  } else if (isDo) {
    print("IS DO: TRUE");
    result = (((ci - 14.6) / (5.0 - 14.6)) * 100);
  } else {
    result = ((ci / si) * 100);
  }
  return result.toPrecision(8);
}

subIndexFunc(wi, qi) async {
  double result;
  result = (wi * qi);
  return result.toPrecision(8);
}

sumOfSubindexFunc(List<double> subIndexes) async {
  double result = 0.0;
  for (int i = 0; i < subIndexes.length; i++) {
    subIndexes[i] = subIndexes[i].toPrecision(3);
    result += subIndexes[i];
  }
  return result.toPrecision(8);
}

waterQualityIndexFunc(sumOfSubindex, sumOfRelativeWeight) async {
  double result;
  result = sumOfSubindex / sumOfRelativeWeight;
  return result.toPrecision(8);
}

ionicRatiosFunc(
    double ca, double mg, double hco3, double so4, double na, double cl) async {
  // print("Ca is $ca");
  // print("Mg is $mg");
  // print("Na is $na");
  // print("Hco is $hco3");
  // print("So is $so4");
  // print("Cl is $cl");
  // print(".......................");
  ca = ((ca * 2) / 40.08).toPrecision(8);
  mg = ((mg * 2) / 24.31).toPrecision(8);
  na = ((na * 1) / 22.99).toPrecision(8);
  hco3 = ((hco3 * 1) / 61.02).toPrecision(8);
  so4 = ((so4 * 2) / 96.06).toPrecision(8);
  cl = ((cl * 1) / 35.45).toPrecision(8);

  // print("Ca is $ca");
  // print("Mg is $mg");
  // print("Na is $na");
  // print("Hco is $hco3");
  // print("So is $so4");
  // print("Cl is $cl");
  final a = ((ca + mg) / (hco3 + so4)).truncateToDecimalPlaces(5);
  final b = (na / cl).truncateToDecimalPlaces(5);
  final c = (hco3 / cl).truncateToDecimalPlaces(5);
  final d = (cl / hco3).truncateToDecimalPlaces(5);
  final e = (so4 / cl).truncateToDecimalPlaces(5);
  final f = (cl / so4).truncateToDecimalPlaces(5);
  final g = (ca / mg).truncateToDecimalPlaces(5);
  final h = (ca / (ca + so4)).truncateToDecimalPlaces(5);

  return [
    {"name": "(ca + mg) / (hco3 + so4)", "value": a},
    {"name": "na / cl", "value": b},
    {"name": "hco3 / cl", "value": c},
    {"name": "cl / hco3", "value": d},
    {"name": "so4 / cl", "value": e},
    {"name": "cl / so4", "value": f},
    {"name": "ca / mg", "value": g},
    {"name": "ca / (ca + so4)", "value": h},
  ];
}

industrialUseFunc(double hco3, double so4, double na, double cl, double kp,
    double co3) async {
  na = ((na * 1) / 22.99).toPrecision(8);
  hco3 = ((hco3 * 1) / 61.02).toPrecision(8);
  so4 = ((so4 * 2) / 96.06).toPrecision(8);
  cl = ((cl * 1) / 35.45).toPrecision(8);
  kp = ((kp * 1) / 39.10).toPrecision(8);
  co3 = ((co3 * 2) / 60.01).toPrecision(8);

  final a = ((so4 + cl) / (hco3 + co3)).truncateToDecimalPlaces(5);
  final b = ((cl - (na + kp)) / cl).truncateToDecimalPlaces(5);
  final c = ((cl - (na + kp)) / (so4 + hco3 + co3)).truncateToDecimalPlaces(5);

  return [
    {"name": "L − S", "value": a},
    {"name": "CAI 1", "value": b},
    {"name": "CAI 2", "value": c},
  ];
}

irrigationUseFunc(
    double na, double mg, double ca, double kp, double hco3) async {
  ca = ((ca * 2) / 40.08).toPrecision(8);
  mg = ((mg * 2) / 24.31).toPrecision(8);
  na = ((na * 1) / 22.99).toPrecision(8);
  kp = ((kp * 1) / 39.10).toPrecision(8);
  hco3 = ((hco3 * 1) / 61.02).toPrecision(8);

  final a = ((na * 100) / (ca + mg + na + kp)).truncateToDecimalPlaces(5);
  final b = (na / sqrt((ca + mg) / 2)).truncateToDecimalPlaces(5);
  final c = (na / (ca + mg)).truncateToDecimalPlaces(5);
  final d = (hco3 - ca).truncateToDecimalPlaces(5);
  final e =
      (((na + kp) * 100) / (na + kp + ca + mg)).truncateToDecimalPlaces(5);
  final f = ((na + sqrt(hco3)) / (ca + mg + na)).truncateToDecimalPlaces(5);

  return [
    {"name": "%Na", "value": a},
    {"name": "SAR", "value": b},
    {"name": "KR", "value": c},
    {"name": "RSBC", "value": d},
    {"name": "SSP", "value": e},
    {"name": "PI", "value": f}
  ];
}

geeoChemicalIndicesFunc(double na, double cl, double so4, double kp) async {
  na = ((na * 1) / 22.99).toPrecision(8);
  so4 = ((so4 * 2) / 96.06).toPrecision(8);
  cl = ((cl * 1) / 35.45).toPrecision(8);
  kp = ((kp * 1) / 39.10).toPrecision(8);

  final a = ((na - cl) / so4).truncateToDecimalPlaces(5);
  final b = (((na + kp) - cl) / so4).truncateToDecimalPlaces(5);

  return [
    {"name": "BEI", "value": a},
    {"name": "MGI", "value": b}
  ];
}
