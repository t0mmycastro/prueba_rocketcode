class PersonalData {
  String name = "";
  String lastName = "";
}

class BirthDate {
  String day = "";
  String month = "";
  String year = "";
}

class ContactInformation {
  String email = "";
  String phone = "";
}

class UserData {
  PersonalData personalData = PersonalData();
  BirthDate birthDate = BirthDate();
  ContactInformation contactInformation = ContactInformation();

  UserData({
    required this.personalData,
    required this.birthDate,
    required this.contactInformation,
  });
}