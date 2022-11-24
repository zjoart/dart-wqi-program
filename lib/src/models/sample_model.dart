import 'package:wqi_program/src/models/relative_weight_model.dart';

class SampleModel {
  SampleModel({
    required this.rweight,
    required this.samples,
  });
  late final List<RelativeWeightModel> rweight;
  late final List<Samples> samples;

  SampleModel.fromJson(Map<String, dynamic> json) {
    rweight = List.from(json['rweight'])
        .map((e) => RelativeWeightModel.fromJson(e))
        .toList();
    samples =
        List.from(json['samples']).map((e) => Samples.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rweight'] = rweight.map((e) => e.toJson()).toList();
    _data['samples'] = samples.map((e) => e.toJson()).toList();
    return _data;
  }
}
