getParams() {
  return {
    "rweight": getrelativeWeights(),
    "samples": [
      {
        "name": "s1",
        "params": [
          {"name": "ph", "ap": 6.3},
          {"name": "tds", "ap": 87},
          {"name": "ca", "ap": 112.7},
          {"name": "mg", "ap": 11.1},
          {"name": "na", "ap": 305.2},
          {"name": "k", "ap": 4.5},
          {"name": "hco3", "ap": 236.4},
          {"name": "cl", "ap": 88.9},
          {"name": "no3", "ap": 0.09},
          {"name": "so4", "ap": 17.9},
        ],
      },
      {
        "name": "s2",
        "params": [
          {"name": "ph", "ap": 5.6},
          {"name": "tds", "ap": 113.5},
          {"name": "ca", "ap": 44.1},
          {"name": "mg", "ap": 11.4},
          {"name": "na", "ap": 307.3},
          {"name": "k", "ap": 4.5},
          {"name": "hco3", "ap": 237},
          {"name": "cl", "ap": 89.18},
          {"name": "no3", "ap": 0.74},
          {"name": "so4", "ap": 18.4},
        ],
      },
    ]
  };
}

getrelativeWeights() {
  return [
    {
      "name": "ph",
      "si": 650,
      "rw": 0.129,
    },
    {
      "name": "tds",
      "si": 500,
      "rw": 0.129,
    },
    {
      "name": "ca",
      "si": 75,
      "rw": 0.064,
    },
    {
      "name": "mg",
      "si": 20,
      "rw": 0.064,
    },
    {
      "name": "na",
      "si": 200,
      "rw": 0.064,
    },
    {
      "name": "k",
      "si": 10,
      "rw": 0.064,
    },
    {
      "name": "hco3",
      "si": 125,
      "rw": 0.096,
    },
    {
      "name": "cl",
      "si": 250,
      "rw": 0.096,
    },
    {
      "name": "no3",
      "si": 50,
      "rw": 0.161,
    },
    {
      "name": "s04",
      "si": 100,
      "rw": 0.129,
    },
  ];
}
