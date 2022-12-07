import 'dart:convert';
import 'dart:io';
import 'package:wqi_program/src/db.dart';
import 'package:wqi_program/src/models/water_model.dart';
import 'package:wqi_program/main.dart' as w;

void main(List<String> arguments) async {
  print('********STARTING PROGRAM********');

  // print(jsonEncode(bum));
  // print("****************");
  // File file = File("rr.txt");
  // for (int i = 0; i < dum.length; i++) {
  //   final aa = {
  //     "name": dum[i]["Sample"]!,
  //     "params": [
  //       {"name": "ph", "analyzedParamter": dum[i]["pH"]!},
  //       {"name": "tds", "analyzedParamter": dum[i]["TDS"]!},
  //       {"name": "ca", "analyzedParamter": dum[i]["Ca"]!},
  //       {"name": "mg", "analyzedParamter": dum[i]["Mg"]!},
  //       {"name": "na", "analyzedParamter": dum[i]["Na"]!},
  //       {"name": "k", "analyzedParamter": dum[i]["K"]!},
  //       {"name": "hco3", "analyzedParamter": dum[i]["HCO3"]!},
  //       {"name": "cl", "analyzedParamter": dum[i]["Cl"]!},
  //       {"name": "no3", "analyzedParamter": dum[i]["NO3"]!},
  //       {"name": "so4", "analyzedParamter": dum[i]["SO4"]!},
  //       {"name": "co3", "analyzedParamter": dum[i]["CO3"]!},
  //     ],
  //   };
  //   bum["samples"]!.add(aa);
  // }
  // final b = {
  //   "s": "b",
  //   "b": [
  //     {"name": "ph", "analyzedParamter": 6.86},
  //     {"name": "cc", "analyzedParamter": 6.86}
  //   ]
  // };
  // a["w"]!.add(b);
  // await file.writeAsString("${jsonEncode(bum)}\n", mode: FileMode.append);

  // print(jsonEncode(bum));
  final samples = WaterSampleModel.fromJson(getParams());
  File file = File("result.pdf");
  for (int i = 0; i < samples.samples.length; i++) {
    final result =
        await w.startCalculation(samples.rweight, samples.samples[i].params);
    print("RESULT FOR ${samples.samples[i].name} : $result");
    await file.writeAsString(
        "${jsonEncode({samples.samples[i].name: result})}\n",
        mode: FileMode.append);
  }

  print('********PROGRAM ENDED********');
}
