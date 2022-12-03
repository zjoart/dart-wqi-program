import 'dart:math';

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

extension TruncateDoubles on double {
  double truncateToDecimalPlaces(int fractionalDigits) =>
      (this * pow(10, fractionalDigits)).truncate() / pow(10, fractionalDigits);
}
