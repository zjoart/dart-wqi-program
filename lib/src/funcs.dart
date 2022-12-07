//import 'package:wqi_program/src/utils.dart';

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
  return result.truncateToDecimalPlaces(8);
}

subIndexFunc(wi, qi) async {
  double result;
  result = (wi * qi);
  return result.truncateToDecimalPlaces(8);
}

sumOfSubindexFunc(List<double> subIndexes) async {
  double result = 0.0;
  for (int i = 0; i < subIndexes.length; i++) {
    subIndexes[i] = subIndexes[i].toPrecision(3);
    result += subIndexes[i];
  }
  return result.truncateToDecimalPlaces(8);
}

waterQualityIndexFunc(sumOfSubindex, sumOfRelativeWeight) async {
  double result;
  result = sumOfSubindex / sumOfRelativeWeight;
  return result.truncateToDecimalPlaces(8);
}

ionicRatiosFunc(
    double ca, double mg, double hco3, double so4, double na, double cl) async {
  print("Ca is $ca");
  print("Mg is $mg");
  print("Na is $na");
  print("Hco is $hco3");
  print("So is $so4");
  print("Cl is $cl");
  print(".......................");
  ca = ((ca * 2) / 40.08).truncateToDecimalPlaces(8);
  mg = ((mg * 2) / 24.31).truncateToDecimalPlaces(8);
  na = ((na * 1) / 22.99).truncateToDecimalPlaces(8);
  hco3 = ((hco3 * 1) / 61.02).truncateToDecimalPlaces(8);
  so4 = ((so4 * 2) / 96.06).truncateToDecimalPlaces(8);
  cl = ((cl * 1) / 35.45).truncateToDecimalPlaces(8);

  print("Ca is $ca");
  print("Mg is $mg");
  print("Na is $na");
  print("Hco is $hco3");
  print("So is $so4");
  print("Cl is $cl");
  final a = ((ca + mg) / (hco3 + so4)).truncateToDecimalPlaces(8);
  final b = (na / cl).truncateToDecimalPlaces(8);
  final c = (hco3 / cl).truncateToDecimalPlaces(8);
  final d = (cl / hco3).truncateToDecimalPlaces(8);
  final e = (so4 / cl).truncateToDecimalPlaces(8);
  final f = (cl / so4).truncateToDecimalPlaces(8);
  final g = (ca / mg).truncateToDecimalPlaces(8);
  final h = (ca / (ca + so4)).truncateToDecimalPlaces(8);

  return {
    "(ca + mg) / (hco3 + so4)": a,
    "na / cl": b,
    "hco3 / cl": c,
    "cl / hco3": d,
    "so4 / cl": e,
    "cl / so4": f,
    "ca / mg": g,
    "ca / (ca + so4)": h
  };
}

industrialUseFunc(double hco3, double so4, double na, double cl, double kp,
    double co3) async {
  na = ((na * 1) / 22.99).truncateToDecimalPlaces(8);
  hco3 = ((hco3 * 1) / 61.02).truncateToDecimalPlaces(8);
  so4 = ((so4 * 2) / 96.06).truncateToDecimalPlaces(8);
  cl = ((cl * 1) / 35.45).truncateToDecimalPlaces(8);
  kp = ((kp * 1) / 39.10).truncateToDecimalPlaces(8);
  co3 = ((co3 * 2) / 12.0107).truncateToDecimalPlaces(8);

  final a = ((so4 + cl) / (hco3 + co3)).truncateToDecimalPlaces(8);
  final b = ((cl - (na + kp)) / cl).truncateToDecimalPlaces(8);
  final c = ((cl - (na + kp)) / (so4 + hco3 + co3)).truncateToDecimalPlaces(8);

  return {"L − S": a, "CAI 1": b, "CAI 2": c};
}

irrigationUseFunc(
    double na, double mg, double ca, double kp, double hco3) async {
  ca = ((ca * 2) / 40.08).truncateToDecimalPlaces(8);
  mg = ((mg * 2) / 24.31).truncateToDecimalPlaces(8);
  na = ((na * 1) / 22.99).truncateToDecimalPlaces(8);
  kp = ((kp * 1) / 39.10).truncateToDecimalPlaces(8);
  hco3 = ((hco3 * 1) / 61.02).truncateToDecimalPlaces(8);

  final a = ((na * 100) / (ca + mg + na + kp)).truncateToDecimalPlaces(8);
  final b = (na / sqrt((ca + mg) / 2)).truncateToDecimalPlaces(8);
  final c = (na / (ca + mg)).truncateToDecimalPlaces(8);
  final d = (hco3 - ca).truncateToDecimalPlaces(8);
  final e =
      (((na + kp) * 100) / (na + kp + ca + mg)).truncateToDecimalPlaces(8);
  final f = ((na + sqrt(hco3)) / (ca + mg + na)).truncateToDecimalPlaces(8);

  return {"%Na": a, "SAR": b, "KR": c, "RSBC": d, "SSP": e, "PI": f};
}

geeoChemicalIndicesFunc(double na, double cl, double so4, double kp) async {
  na = ((na * 1) / 22.99).truncateToDecimalPlaces(8);
  so4 = ((so4 * 2) / 96.06).truncateToDecimalPlaces(8);
  cl = ((cl * 1) / 35.45).truncateToDecimalPlaces(8);
  kp = ((kp * 1) / 39.10).truncateToDecimalPlaces(8);

  final a = ((na - cl) / so4).truncateToDecimalPlaces(8);
  final b = (((na + kp) - cl) / so4).truncateToDecimalPlaces(8);

  return {"BEI": a, "MGI": b};
}
