import 'package:wqi_program/src/b.dart';

getParams() {
  return {"rweight": getrelativeWeights(), "samples": getSamples()};
}

// getrelativeWeights() {
//   return [
//     {
//       "name": "ph",
//       "permissibleLimits": 65,
//       "relativeWeight": 0.121,
//     },
//     {
//       "name": "tds",
//       "permissibleLimits": 500,
//       "relativeWeight": 0.121,
//     },
//     {
//       "name": "ca",
//       "permissibleLimits": 75,
//       "relativeWeight": 0.061,
//     },
//     {
//       "name": "mg",
//       "permissibleLimits": 50,
//       "relativeWeight": 0.061,
//     },
//     {
//       "name": "na",
//       "permissibleLimits": 200,
//       "relativeWeight": 0.061,
//     },
//     {
//       "name": "k",
//       "permissibleLimits": 55,
//       "relativeWeight": 0.061,
//     },
//     {
//       "name": "hco3",
//       "permissibleLimits": 1000,
//       "relativeWeight": 0.091,
//     },
//     {
//       "name": "cl",
//       "permissibleLimits": 250,
//       "relativeWeight": 0.091,
//     },
//     {
//       "name": "no3",
//       "permissibleLimits": 50,
//       "relativeWeight": 0.152,
//     },
//     {
//       "name": "s04",
//       "permissibleLimits": 250,
//       "relativeWeight": 0.121,
//     },
//   ];
// }

getrelativeWeights() {
  return [
    {
      "name": "ph",
      "permissibleLimits": 0,
      "relativeWeight": 0.129,
    },
    {
      "name": "tds",
      "permissibleLimits": 500,
      "relativeWeight": 0.129,
    },
    {
      "name": "ca",
      "permissibleLimits": 75,
      "relativeWeight": 0.064,
    },
    {
      "name": "mg",
      "permissibleLimits": 20,
      "relativeWeight": 0.064,
    },
    {
      "name": "na",
      "permissibleLimits": 200,
      "relativeWeight": 0.064,
    },
    {
      "name": "k",
      "permissibleLimits": 10,
      "relativeWeight": 0.064,
    },
    {
      "name": "hco3",
      "permissibleLimits": 125,
      "relativeWeight": 0.096,
    },
    {
      "name": "cl",
      "permissibleLimits": 250,
      "relativeWeight": 0.096,
    },
    {
      "name": "no3",
      "permissibleLimits": 50,
      "relativeWeight": 0.161,
    },
    {
      "name": "s04",
      "permissibleLimits": 100,
      "relativeWeight": 0.129,
    },
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