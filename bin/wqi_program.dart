import 'package:wqi_program/src/db.dart';
import 'package:wqi_program/src/models/sample_model.dart';
import 'package:wqi_program/main.dart' as w;

void main(List<String> arguments) {
  print('********STARTING PROGRAM********');

  // final samples = SampleModel.fromJson(getParams());
  w.startCalculation();
  print('********PROGRAM ENDED********');
}
