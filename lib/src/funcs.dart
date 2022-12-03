//import 'package:wqi_program/src/utils.dart';

qualityRatingIndexFunc(double ci, int si, {bool isPh = false}) {
  if (isPh) {
    print("IS PH: TRUE");
    return (((ci - 7.0) / 1.5) * 100);
  } else {
    return ((ci / si) * 100);
  }
}

subIndexFunc(wi, qi) {
  return (wi * qi);
}

sumOfSubindexFunc(List subIndexes) {
  double result = 0;
  for (int i = 0; i < subIndexes.length; i++) {
    result = result;
    //.truncateToDecimalPlaces(3);
    print('$i Result here is $result');
    print(subIndexes[i]);
    result += subIndexes[i];
    print('$i Result here is $result');
  }
  return result;
}

waterQualityIndexFunc(sumOfSubindex, sumOfRelativeWeight) {
  return sumOfSubindex / sumOfRelativeWeight;
}

List<Map<String, dynamic>> ionicRatiosFunc(ca, mg, hco3, so4, na, cl) {
  print("Ca is $ca");
  print("Mg is $mg");
  print("Na is $na");
  print("Hco is $hco3");
  print("So is $so4");
  print("Cl is $cl");
  print(".......................");
  ca = (ca * 2) / 40.08;
  mg = (mg * 2) / 24.31;
  na = (na * 1) / 22.99;
  hco3 = (hco3 * 1) / 61.02;
  so4 = (so4 * 2) / 96.06;
  cl = (cl * 1) / 35.45;

  print("Ca is $ca");
  print("Mg is $mg");
  print("Na is $na");
  print("Hco is $hco3");
  print("So is $so4");
  print("Cl is $cl");
  final a = (ca + mg) / (hco3 + so4);
  final b = na / cl;
  final c = hco3 / cl;
  final d = cl / hco3;
  final e = so4 / cl;
  final f = cl / so4;
  final g = ca / mg;
  final h = ca / (ca + so4);

  return [
    {"(ca + mg) / (hco3 + so4)": a},
    {"na / cl": b},
    {"hco3 / cl": c},
    {"cl / hco3": d},
    {"so4 / cl": e},
    {"cl / so4": f},
    {"ca / mg": g},
    {"ca / (ca + so4)": h},
  ];
}

industrialUseFunc(hco3, so4, na, cl, kp, co3) {
  na = (na * 1) / 22.99;
  hco3 = (hco3 * 1) / 61.02;
  so4 = (so4 * 2) / 96.06;
  cl = (cl * 1) / 35.45;
  kp = (kp * 1) / 39.10;
  co3 = (co3 * 2) / 12.0107;

  final a = (so4 + cl) / (hco3 + co3);
  final b = (cl - (na + kp)) / cl;
  final c = (cl - (na + kp)) / (so4 + hco3 + co3);

  return [
    {"L − S": a},
    {"CAI 1": b},
    {"CAI 2": c}
  ];
}

irigationUseFunc() {}
geeoChemicalIndicesFunc(na, cl, so4, kp) {
  na = (na * 1) / 22.99;
  so4 = (so4 * 2) / 96.06;
  cl = (cl * 1) / 35.45;
  kp = (kp * 1) / 39.10;
  //final a = divide(na - cl, so4);
  final a = (na - cl) / so4;
  final b = ((na + kp) - cl) / so4;
  return [
    {"BEI": a},
    //{"BEI2": c},
    {"MGI", b}
  ];
}
