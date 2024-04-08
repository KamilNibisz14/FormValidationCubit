enum GenderEnum {
  male,
  female,
  other;

  static GenderEnum? fromString(String genderString) {
    switch (genderString.toLowerCase()) {
      case 'male':
        return GenderEnum.male;
      case 'female':
        return GenderEnum.female;
      case 'other':
        return GenderEnum.other;
      default:
        return null;
    }
  }

  @override
  String toString() {
    switch (this) {
      case GenderEnum.male:
        return 'male';
      case GenderEnum.female:
        return 'female';
      case GenderEnum.other:
        return 'other';
    }
  }
}