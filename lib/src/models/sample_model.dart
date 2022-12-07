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
}

class Params {
  Params({
    required this.name,
    required this.analyzedParamter,
  });
  late final String name;
  late final double analyzedParamter;

  Params.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    analyzedParamter = json['analyzedParamter'].toDouble();
  }
}
