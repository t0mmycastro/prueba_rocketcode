class Validator {
  static validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) return "El correo es requerido";
    if (!regExp.hasMatch(value)) return "Correo invalido";
    return null;
  }

  static validateString(String value) {
    if (value.isEmpty) return "No puede estar este campo vacío";
    return null;
  }

  static validatePhone(String value) {
    if (value.isEmpty) return "No puede estar este campo vacío";
    if (value.isNotEmpty && value.length < 6) {
      return "El teléfono no puede tener menos de 6 caracteres.";
    }
    return null;
  }
}