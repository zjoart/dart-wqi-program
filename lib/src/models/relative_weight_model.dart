class Rweight {
  Rweight({
    required this.name,
    required this.permissibleLimits,
    required this.relativeWeight,
  });
  late final String name;
  late final int permissibleLimits;
  late final double relativeWeight;

  Rweight.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    permissibleLimits = json['permissibleLimits'];
    relativeWeight = json['relativeWeight'];
  }
}
