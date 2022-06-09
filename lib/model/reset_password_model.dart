class ResetPasswordRequest {
  String? newPassword;
  String? confirmPassword;

  ResetPasswordRequest({this.newPassword, this.confirmPassword});

  ResetPasswordRequest.fromJson(Map<String, dynamic> json) {
    newPassword = json['new_password'];
    confirmPassword = json['confirm_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['new_password'] = newPassword;
    data['confirm_password'] = confirmPassword;
    return data;
  }
}

class ResetPasswordResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  ResetPasswordResponse({this.status, this.code, this.message, this.data});

  ResetPasswordResponse.fromJson(Map<String, dynamic> json) {
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
  String? email;

  Data({this.name, this.email});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    return data;
  }
}
