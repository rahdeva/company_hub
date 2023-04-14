class User {
  User({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.status,
    this.picture,
  });

  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;
  String? picture;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        gender: json["gender"],
        status: json["status"],
        picture: json["picture"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "gender": gender,
        "status": status,
        "picture": picture,
      };
}
