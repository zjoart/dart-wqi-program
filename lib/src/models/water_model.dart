import 'package:wqi_program/src/models/relative_weight_model.dart';
import 'package:wqi_program/src/models/sample_model.dart';

class WaterSampleModel {
  WaterSampleModel({
    required this.rweight,
    required this.samples,
  });
  late final List<Rweight> rweight;
  late final List<Samples> samples;

  WaterSampleModel.fromJson(Map<String, dynamic> json) {
    rweight =
        List.from(json['rweight']).map((e) => Rweight.fromJson(e)).toList();
    samples =
        List.from(json['samples']).map((e) => Samples.fromJson(e)).toList();
  }
}
