class RelativeWeightModel {
  RelativeWeightModel({
    required this.name,
    required this.si,
    required this.rw,
  });
  late final String name;
  late final int? si;
  late final double rw;

  RelativeWeightModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    si = json['si'];
    rw = json['rw'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['si'] = si;
    _data['rw'] = rw;
    return _data;
  }
}

class Samples {
  Samples({
    required this.name,
    required this.params,
  });
  late final String name;
  late final List<Params> params;

  Samples.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    params = List.from(json['params']).map((e) => Params.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['params'] = params.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Params {
  Params({
    required this.name,
    required this.ap,
  });
  late final String name;
  late final double ap;

  Params.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    ap = json['ap'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['ap'] = ap;
    return _data;
  }
}
