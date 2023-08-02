class User {
  String? name;
  String? gender;
  bool? isMarried;
  String? phoneNumber;
  String? id;

  User({
    this.name,
    this.gender,
    this.isMarried,
    this.phoneNumber,
    this.id,
  });

  factory User.fromJson(Map<String, Object?> json) {
    return User(
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      isMarried: json['isMarried'] as bool?,
      phoneNumber: json['phoneNumber'] as String?,
      id: json['id'] as String?,
    );
  }
}
