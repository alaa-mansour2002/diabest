class AuthModel {
  User? user;
  String? token;

  AuthModel({this.user, this.token});

  AuthModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['token'] = token;
    return data;
  }
}

class User {
  String? fullName;
  String? slug;
  int? nationalId;
  String? email;
  String? password;
  String? gender;
  String? profileImage;
  String? role;
  bool? active;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  User(
      {this.fullName,
        this.slug,
        this.nationalId,
        this.email,
        this.password,
        this.gender,
        this.profileImage,
        this.role,
        this.active,
        this.sId,
        this.createdAt,
        this.updatedAt,
        this.iV});

  User.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    slug = json['slug'];
    nationalId = json['nationalId'];
    email = json['email'];
    password = json['password'];
    gender = json['gender'];
    profileImage = json['profileImage'];
    role = json['role'];
    active = json['active'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullName'] = fullName;
    data['slug'] = slug;
    data['nationalId'] = nationalId;
    data['email'] = email;
    data['password'] = password;
    data['gender'] = gender;
    data['profileImage'] = profileImage;
    data['role'] = role;
    data['active'] = active;
    data['_id'] = sId;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}
