class Validator {
  static String? usernameValidate(String? name)
  {
    if(name == null || name.isEmpty)
    {
      return 'Khong duoc de trong';
    }
    return null;
  }
}