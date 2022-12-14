class ProResultModel {
  ProResultModel({
    required this.valuesModel,
  });
  late final List<ValuesModel> valuesModel;

  ProResultModel.fromJson(Map<String, dynamic> json) {
    valuesModel = List.from(json['valuesModel'])
        .map((e) => ValuesModel.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['valuesModel'] = valuesModel.map((e) => e.toJson()).toList();
    return _data;
  }
}

class ValuesModel {
  ValuesModel({
    required this.sampleName,
    required this.resultModel,
  });
  late final String sampleName;
  late final ResultModel resultModel;

  ValuesModel.fromJson(Map<String, dynamic> json) {
    sampleName = json['sampleName'];
    resultModel = ResultModel.fromJson(json['resultModel']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['sampleName'] = sampleName;
    _data['resultModel'] = resultModel.toJson();
    return _data;
  }
}

class ResultModel {
  ResultModel({
    required this.qualityRatingModel,
    required this.subIndexModel,
    required this.sumofSubIndex,
    required this.sumOfRelativeWeight,
    required this.waterQualityIndex,
    required this.ionicRatioModel,
    required this.industrialUseModel,
    required this.irrigationUseModel,
    required this.geoChemicalIndicesModel,
  });
  late final QualityRatingModel qualityRatingModel;
  late final SubIndexModel subIndexModel;
  late final double sumofSubIndex;
  late final double sumOfRelativeWeight;
  late final double waterQualityIndex;
  late final List<IonicRatioModel> ionicRatioModel;
  late final List<IndustrialUseModel> industrialUseModel;
  late final List<IrrigationUseModel> irrigationUseModel;
  late final List<GeoChemicalIndicesModel> geoChemicalIndicesModel;

  ResultModel.fromJson(Map<String, dynamic> json) {
    qualityRatingModel =
        QualityRatingModel.fromJson(json['qualityRatingModel']);
    subIndexModel = SubIndexModel.fromJson(json['subIndexModel']);
    sumofSubIndex = json['sumofSubIndex'];
    sumOfRelativeWeight = json['sumOfRelativeWeight'];
    waterQualityIndex = json['waterQualityIndex'];
    ionicRatioModel = List.from(json['ionicRatioModel'])
        .map((e) => IonicRatioModel.fromJson(e))
        .toList();
    industrialUseModel = List.from(json['industrialUseModel'])
        .map((e) => IndustrialUseModel.fromJson(e))
        .toList();
    irrigationUseModel = List.from(json['irrigationUseModel'])
        .map((e) => IrrigationUseModel.fromJson(e))
        .toList();
    geoChemicalIndicesModel = List.from(json['geoChemicalIndicesModel'])
        .map((e) => GeoChemicalIndicesModel.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['qualityRatingModel'] = qualityRatingModel.toJson();
    _data['subIndexModel'] = subIndexModel.toJson();
    _data['sumofSubIndex'] = sumofSubIndex;
    _data['sumOfRelativeWeight'] = sumOfRelativeWeight;
    _data['waterQualityIndex'] = waterQualityIndex;
    _data['ionicRatioModel'] = ionicRatioModel.map((e) => e.toJson()).toList();
    _data['industrialUseModel'] =
        industrialUseModel.map((e) => e.toJson()).toList();
    _data['irrigationUseModel'] =
        irrigationUseModel.map((e) => e.toJson()).toList();
    _data['geoChemicalIndicesModel'] =
        geoChemicalIndicesModel.map((e) => e.toJson()).toList();
    return _data;
  }
}

class QualityRatingModel {
  QualityRatingModel({
    required this.ph,
    required this.tds,
    required this.ca,
    required this.mg,
    required this.na,
    required this.k,
    required this.hco3,
    required this.cl,
    required this.no3,
    required this.so4,
  });
  late final double ph;
  late final double tds;
  late final double ca;
  late final double mg;
  late final double na;
  late final double k;
  late final double hco3;
  late final double cl;
  late final double no3;
  late final double so4;

  QualityRatingModel.fromJson(Map<String, dynamic> json) {
    ph = json['ph'];
    tds = json['tds'];
    ca = json['ca'];
    mg = json['mg'];
    na = json['na'];
    k = json['k'];
    hco3 = json['hco3'];
    cl = json['cl'];
    no3 = json['no3'];
    so4 = json['so4'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ph'] = ph;
    _data['tds'] = tds;
    _data['ca'] = ca;
    _data['mg'] = mg;
    _data['na'] = na;
    _data['k'] = k;
    _data['hco3'] = hco3;
    _data['cl'] = cl;
    _data['no3'] = no3;
    _data['so4'] = so4;
    return _data;
  }
}

class SubIndexModel {
  SubIndexModel({
    required this.ph,
    required this.tds,
    required this.ca,
    required this.mg,
    required this.na,
    required this.k,
    required this.hco3,
    required this.cl,
    required this.no3,
    required this.so4,
  });
  late final double ph;
  late final double tds;
  late final double ca;
  late final double mg;
  late final double na;
  late final double k;
  late final double hco3;
  late final double cl;
  late final double no3;
  late final double so4;

  SubIndexModel.fromJson(Map<String, dynamic> json) {
    ph = json['ph'];
    tds = json['tds'];
    ca = json['ca'];
    mg = json['mg'];
    na = json['na'];
    k = json['k'];
    hco3 = json['hco3'];
    cl = json['cl'];
    no3 = json['no3'];
    so4 = json['so4'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ph'] = ph;
    _data['tds'] = tds;
    _data['ca'] = ca;
    _data['mg'] = mg;
    _data['na'] = na;
    _data['k'] = k;
    _data['hco3'] = hco3;
    _data['cl'] = cl;
    _data['no3'] = no3;
    _data['so4'] = so4;
    return _data;
  }
}

class IonicRatioModel {
  IonicRatioModel({
    required this.name,
    required this.value,
  });
  late final String name;
  late final double value;

  IonicRatioModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['value'] = value;
    return _data;
  }
}

class IndustrialUseModel {
  IndustrialUseModel({
    required this.name,
    required this.value,
  });
  late final String name;
  late final double value;

  IndustrialUseModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['value'] = value;
    return _data;
  }
}

class IrrigationUseModel {
  IrrigationUseModel({
    required this.name,
    required this.value,
  });
  late final String name;
  late final double value;

  IrrigationUseModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['value'] = value;
    return _data;
  }
}

class GeoChemicalIndicesModel {
  GeoChemicalIndicesModel({
    required this.name,
    required this.value,
  });
  late final String name;
  late final double value;

  GeoChemicalIndicesModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['value'] = value;
    return _data;
  }
}
