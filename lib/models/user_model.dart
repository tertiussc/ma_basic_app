class UserModel {
  final String? userId;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;

  const UserModel({
    this.userId,
    required this.fullName,
    required this.email,
    required this.phoneNo,
    required this.password,
  });

  Map<String, String> toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "Phone": phoneNo,
      "Password": password,
    };
  }
}
