class VerifyRequest {
  String? token;

  VerifyRequest({this.token});

  VerifyRequest.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    return data;
  }
}

class VerifyResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  VerifyResponse({this.status, this.code, this.message, this.data});

  VerifyResponse.fromJson(Map<String, dynamic> json) {
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
  String? verifiedAt;

  Data({this.name, this.email, this.verifiedAt});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    verifiedAt = json['verified_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['verified_at'] = verifiedAt;
    return data;
  }
}
