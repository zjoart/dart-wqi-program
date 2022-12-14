class Rweight {
  Rweight({
    required this.name,
    required this.permissibleLimits,
    required this.weight,
  });
  late final String name;
  late final int permissibleLimits;
  late final int weight;

  Rweight.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    permissibleLimits = json['permissibleLimits'];
    weight = json['weight'];
  }
}
