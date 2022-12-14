import 'dart:convert';
import 'dart:io';
import 'package:wqi_program/src/datas/db.dart';
import 'package:wqi_program/src/functions/file_creation.dart';
import 'package:wqi_program/src/functions/sort_raw_data.dart';
import 'package:wqi_program/src/models/result_model.dart';
import 'package:wqi_program/src/models/water_model.dart';
import 'package:wqi_program/main.dart' as w;

void main(List<String> arguments) async {
  print('********STARTING PROGRAM********');

  // sortRawData();

  final resultList = [];
  final samples = WaterSampleModel.fromJson(getParams());
  // File file = File("result.txt");
  for (int i = 0; i < samples.samples.length; i++) {
    Map<String, dynamic> result =
        await w.startCalculation(samples.rweight, samples.samples[i].params);
    if (i == 0) {
      // print("RESULT FOR ${samples.samples[0].name} : $result");
      // final r = Map<String, dynamic>.from(result);
      // print(r.runtimeType);
    }
    final cleanMap = jsonDecode(jsonEncode(result));
    resultList
        .add({"sampleName": samples.samples[i].name, "resultModel": cleanMap});
  }
  // await file.writeAsString("${jsonEncode(resultList)}\n",
  //     mode: FileMode.append);
  // print("**************************************************\n");
  final fileData = {"valuesModel": resultList};

  createFile(fileData);
  print('********PROGRAM ENDED********');
}
