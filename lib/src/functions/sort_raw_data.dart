import 'dart:convert';
import 'dart:io';

import 'package:wqi_program/src/datas/sample_json_result.dart';

sortRawData() async {
  final bum = [];
  File file = File("rawdata.txt");
  for (int i = 0; i < dum.length; i++) {
    final aa = {
      "name": dum[i]["Sample"]!,
      "params": [
        {"name": "ph", "analyzedParamter": dum[i]["pH"]!},
        {"name": "tds", "analyzedParamter": dum[i]["TDS"]!},
        {"name": "ca", "analyzedParamter": dum[i]["Ca"]!},
        {"name": "mg", "analyzedParamter": dum[i]["Mg"]!},
        {"name": "na", "analyzedParamter": dum[i]["Na"]!},
        {"name": "k", "analyzedParamter": dum[i]["K"]!},
        {"name": "hco3", "analyzedParamter": dum[i]["HCO3"]!},
        {"name": "cl", "analyzedParamter": dum[i]["Cl"]!},
        {"name": "no3", "analyzedParamter": dum[i]["NO3"]!},
        {"name": "so4", "analyzedParamter": dum[i]["SO4"]!},
        {"name": "bod", "analyzedParamter": dum[i]["BOD"]!},
        {"name": "cod", "analyzedParamter": dum[i]["COD"]!},
        {"name": "co3", "analyzedParamter": dum[i]["CO3"]!},
      ],
    };
    bum.add(aa);
  }

  await file.writeAsString("${jsonEncode(bum)}\n", mode: FileMode.append);

  print(jsonEncode(bum));
}
