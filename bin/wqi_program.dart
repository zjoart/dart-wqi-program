import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:wqi_program/src/db.dart';
import 'package:wqi_program/src/models/water_model.dart';
import 'package:wqi_program/main.dart' as w;

void main(List<String> arguments) async {
  print('********STARTING PROGRAM********');

  final samples = WaterSampleModel.fromJson(getParams());
  File file = File("result.txt");
  for (int i = 0; i < samples.samples.length; i++) {
    final result =
        await w.startCalculation(samples.rweight, samples.samples[i].params);
    print("RESULT FOR ${samples.samples[i].name} : $result");
    await file.writeAsString(jsonEncode({samples.samples[i].name: result}),
        mode: FileMode.append);
  }

  print('********PROGRAM ENDED********');
}
