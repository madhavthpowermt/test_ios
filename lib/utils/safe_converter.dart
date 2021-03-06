/// safe convert tool
class SafeManager {
  /// Type conversion to int <br>
  ///
  /// @param data:  json data <br>
  /// @param key:   json key <br>
  /// @param defaultValue:   default value when convert fail <br>
  /// @return result after convert  <br>
  static int? parseInt(
    Map<String, dynamic> data,
    String key, {
    int? defaultValue,
  }) {
    try {
      Object? value = data[key];
      if (value == null) {
        return defaultValue;
      }
      if (value is int) {
        return value;
      }
      if (value is double) {
        return value.toInt();
      }
      if (value is bool) {
        return value ? 1 : 0;
      }
      if (value is String) {
        var temp = int.tryParse(value);
        if (temp == null) {
          return defaultValue;
        }
        return temp;
      }
      return defaultValue;
    } on Exception {
      return defaultValue;
    }
  }

  /// Type conversion to double <br>
  ///
  /// @param data:  json data <br>
  /// @param key:   json key <br>
  /// @param defaultValue:   default value when convert fail <br>
  /// @return result after convert  <br>
  static double? parseDouble(
    Map<String, dynamic> data,
    String key, {
    double? defaultValue,
  }) {
    try {
      Object? value = data[key];
      if (value == null) {
        return defaultValue;
      }
      if (value is double) {
        return value;
      }
      if (value is int) {
        return value.toDouble();
      }
      if (value is bool) {
        return value ? 1.0 : 0.0;
      }
      if (value is String) {
        var temp = double.tryParse(value);
        if (temp == null) {
          return defaultValue;
        }
        return temp;
      }
      return defaultValue;
    } on Exception {
      return defaultValue;
    }
  }

  /// Type conversion to String <br>
  ///
  /// @param data:  json data <br>
  /// @param key:   json key <br>
  /// @param defaultValue:   default value when convert fail <br>
  /// @return result after convert  <br>
  static String? parseString(
    Map<String, dynamic> data,
    String key, {
    String? defaultValue,
  }) {
    try {
      Object? value = data[key];
      if (value == null) {
        return defaultValue;
      }
      if (value is String) {
        return value;
      }
      if (value is int) {
        return value.toString();
      }
      if (value is bool) {
        return value ? "true" : "false";
      }
      if (value is double) {
        return value.toString();
      }
      return defaultValue;
    } on Exception {
      return defaultValue;
    }
  }

  /// Type conversion to bool <br>
  ///
  /// @param data:  json data <br>
  /// @param key:   json key <br>
  /// @param defaultValue:   default value when convert fail <br>
  /// @return result after convert  <br>
  static bool? parseBoolean(
    Map<String, dynamic> data,
    String key, {
    bool? defaultValue,
  }) {
    try {
      Object? value = data[key];
      if (value == null) {
        return defaultValue;
      }
      if (value is bool) {
        return value;
      }
      if (value is int) {
        if (value == 1) {
          return true;
        }
        if (value == 0) {
          return false;
        }
        return false;
      }
      if (value is double) {
        if (value == 1.0) {
          return true;
        }
        if (value == 0.0) {
          return false;
        }
        return false;
      }
      if (value is String) {
        if (value.toLowerCase() == 'true') {
          return true;
        }
        if (value.toLowerCase() == '1') {
          return true;
        }
        if (value.toLowerCase() == 'false') {
          return false;
        }
        if (value.toLowerCase() == '0') {
          return true;
        }
        return defaultValue;
      }
      return defaultValue;
    } on Exception {
      return defaultValue;
    }
  }

  /// Type conversion to List <br>
  ///
  /// @param data:  json data <br>
  /// @param key:   json key <br>
  /// @param defaultValue:   default value when convert fail <br>
  /// @return result after convert  <br>
  static List parseList(Map<String, dynamic> data, String key) {
    try {
      Object? value = data[key];
      if (value == null) {
        return [];
      }
      if (value is List) {
        return value;
      }
      return [];
    } on Exception {
      return [];
    }
  }

  /// Type conversion to Object <br>
  ///
  /// @param data:  json data <br>
  /// @param key:   json key <br>
  /// @param defaultValue:   default value when convert fail <br>
  /// @return result after convert  <br>
  static Map<String, dynamic>? parseObject(
    Map<String, dynamic> data,
    String key,
  ) {
    try {
      var value = Map<String, dynamic>.from(data[key]);
      if (value is String) {
        return null;
      }
      if (value is int) {
        return null;
      }
      if (value is bool) {
        return null;
      }
      if (value is double) {
        return null;
      }
      if (value is List) {
        return null;
      }
      return value;
    } on Exception {
      return null;
    }
  }

  /// Type conversion to Map <br>
  ///
  /// @param data:  json data <br>
  /// @param key:   json key <br>
  /// @param defaultValue:   default value when convert fail <br>
  /// @return result after convert  <br>
  static Map<String, dynamic> parseMap(Map<String, dynamic> data, String key) {
    try {
      var value = Map<String, dynamic>.from(data[key]);
      if (value is String) {
        return {};
      }
      if (value is int) {
        return {};
      }
      if (value is bool) {
        return {};
      }
      if (value is double) {
        return {};
      }
      if (value is List) {
        return {};
      }
      return value;
    } on Exception {
      return {};
    }
  }
}
