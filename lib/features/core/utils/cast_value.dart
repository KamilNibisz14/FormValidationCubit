abstract class CastValue {
  static dynamic castValue(Type type, String value) {
    switch (type) {
      case int:
        int? intValue = int.tryParse(value);
        if (intValue != null) {
          return intValue;
        }
        break;
      case double:
        double? doubleValue = double.tryParse(value);
        if (doubleValue != null) {
          return doubleValue;
        }
        break;
    }
    return value;
  }
}
