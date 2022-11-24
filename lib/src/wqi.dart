double qualityRating(double ci, int si, {bool isPh = false}) {
  if (isPh) {
    print("TRUE");
    return 100 * ((ci - 7.0) / 1.5);
  } else {
    return 100 * (ci / si);
  }
}

double subIndex(wi, qi) {
  return wi * qi;
}

wqi(si) {
  double result = 0;
  for (int i = 0; i < si.length; i++) {
    result += si[i];
  }
  return result;
}

List<Map<String, dynamic>> ionicRatio(
  ca,
  mg,
  hco3,
  so4,
  na,
  cl,
) {
  ca = (ca * 2) / 40.08;
  mg = (mg * 2) / 24.31;
  na = (na * 1) / 22.99;
  hco3 = (hco3 * 1) / 61.02;
  so4 = (so4 * 2) / 96.06;
  cl = (cl * 1) / 35.45;

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
    {"ca / (ca + so4)": h}
  ];
}
