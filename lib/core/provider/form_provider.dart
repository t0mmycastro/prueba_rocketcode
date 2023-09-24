import 'package:flutter/material.dart';
import 'package:prueba_rocketcode/core/data/models/form/form_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDataProvider extends ChangeNotifier {
  UserData userData = UserData(
    personalData: PersonalData(),
    birthDate: BirthDate(),
    contactInformation: ContactInformation(),
  );

  String nombreInputText = "";
  String apellidoInputText = ""; 
  String dayInputText = ""; 
  String monthInputText = "";
  String yearInputText = "";
  String emailInputText = "";
  String phoneInputText = "";

  bool isUserDataVisible = false;

  void updateUserData(UserData newData) {
    userData = newData;
    notifyListeners();
  }

  void updateNombreInputText(String text) {
    nombreInputText = text;
    notifyListeners();
  }

  void updateApellidoInputText(String text) {
    apellidoInputText = text;
    notifyListeners();
  }

  void updateDayInputText(String text) {
    dayInputText = text;
    notifyListeners();
  }

  void updateMonthInputText(String text) {
    monthInputText = text;
    notifyListeners();
  }

  void updateYearInputText(String text) {
    yearInputText = text;
    notifyListeners();
  }

  void updateEmailInputText(String text) {
    emailInputText = text;
    notifyListeners();
  }

  void updatePhoneInputText(String text) {
    phoneInputText = text;
    notifyListeners();
  }

    void updatePersonalData(String name, String lastName) {
    userData.personalData.name = name;
    userData.personalData.lastName = lastName;
    notifyListeners();
  }

  void updateBirthDate(String day, String month, String year) {
    userData.birthDate.day = day;
    userData.birthDate.month = month;
    userData.birthDate.year = year;
    notifyListeners();
  }

  void updateContactInformation(String email, String phone) {
    userData.contactInformation.email = email;
    userData.contactInformation.phone = phone;
    notifyListeners();
  }

  void toggleUserDataVisibility() {
    isUserDataVisible = !isUserDataVisible;
    notifyListeners();
  }

  Future<void> saveUserDataToSession() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('nombre', nombreInputText);
    prefs.setString('apellido', apellidoInputText);
    prefs.setString('day', dayInputText);
    prefs.setString('month', monthInputText);
    prefs.setString('year', yearInputText);
    prefs.setString('email', emailInputText);
    prefs.setString('phone', phoneInputText);
  }

}