import 'package:wqi_program/src/datas/samples_model.dart';

getParams() {
  return {"rweight": getrelativeWeights(), "samples": getSamples()};
}

getrelativeWeights() {
  return [
    {
      "name": "ph",
      "permissibleLimits": 0,
      "weight": 2,
    },
    {
      "name": "tds",
      "permissibleLimits": 500,
      "weight": 5,
    },
    {
      "name": "ca",
      "permissibleLimits": 75,
      "weight": 2,
    },
    {
      "name": "mg",
      "permissibleLimits": 20,
      "weight": 2,
    },
    {
      "name": "na",
      "permissibleLimits": 200,
      "weight": 2,
    },
    {
      "name": "k",
      "permissibleLimits": 10,
      "weight": 2,
    },
    {
      "name": "hco3",
      "permissibleLimits": 125,
      "weight": 3,
    },
    {
      "name": "cl",
      "permissibleLimits": 250,
      "weight": 3,
    },
    {
      "name": "no3",
      "permissibleLimits": 50,
      "weight": 5,
    },
    {
      "name": "s04",
      "permissibleLimits": 100,
      "weight": 5,
    },
    // {
    //   "name": "bod",
    //   "permissibleLimits": 20,
    //   "weight": 5,
    // },
    // {
    //   "name": "cod",
    //   "permissibleLimits": 120,
    //   "weight": 5,
    // },
  ];
}


//  final samples = [
//     [
//       2.75,
//       700,
//       7.5,
//       7.95,
//       75.25,
//       0.195,
//       4.55,
//       196,
//       361,
//       1072,
//       189,
//     ],
//     [3.8, 727, 7.125, 7.325, 68, 0.3, 4.7, 216, 355, 1082, 200]
//   ];
//   final weights = [
//     0.2,
//     0.001,
//     0.133,
//     0.2,
//     0.2,
//     0.2,
//     0.02,
//     0.003,
//     0.002,
//     0.004,
//     0.005,
//   ];
//   final standardValue = [
//     5,
//     1000,
//     7.5,
//     5,
//     5,
//     5,
//     50,
//     350,
//     500,
//     250,
//     200,
//   ];

// {
//         "name": "lx-1",
//         "params": [
//           {"name": "ph", "analyzedParamter": 6.86},
//           {"name": "tds", "analyzedParamter": 597},
//           {"name": "ca", "analyzedParamter": 77.85},
//           {"name": "mg", "analyzedParamter": 10.79},
//           {"name": "na", "analyzedParamter": 103.23},
//           {"name": "k", "analyzedParamter": 64.86},
//           {"name": "hco3", "analyzedParamter": 156.16},
//           {"name": "cl", "analyzedParamter": 38.25},
//           {"name": "no3", "analyzedParamter": 65.74},
//           {"name": "so4", "analyzedParamter": 90.01},
//           {"name": "co3", "analyzedParamter": 67.54},
//         ],
//       },