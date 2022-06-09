class RegisterRequest {
  String? name;
  String? gender;
  String? handphone;
  String? city;
  String? email;
  String? password;
  String? confirmPassword;

  RegisterRequest(
      {this.name,
      this.gender,
      this.handphone,
      this.city,
      this.email,
      this.password,
      this.confirmPassword});

  RegisterRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    gender = json['gender'];
    handphone = json['handphone'];
    city = json['city'];
    email = json['email'];
    password = json['password'];
    confirmPassword = json['confirm_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['city'] = city;
    data['email'] = email;
    data['password'] = password;
    data['confirm_password'] = confirmPassword;
    return data;
  }
}

class RegisterResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  RegisterResponse({this.status, this.code, this.message, this.data});

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? name;
  String? gender;
  String? handphone;
  String? city;
  String? email;
  int? status;
  String? createdAt;

  Data(
      {this.name,
      this.gender,
      this.handphone,
      this.city,
      this.email,
      this.status,
      this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    gender = json['gender'];
    handphone = json['handphone'];
    city = json['city'];
    email = json['email'];
    status = json['status'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['city'] = city;
    data['email'] = email;
    data['status'] = status;
    data['created_at'] = createdAt;
    return data;
  }
}
