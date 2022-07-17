class GetBookingMembershipByUserRequest {
  String? id;
  String? status;

  GetBookingMembershipByUserRequest({this.id, this.status});

  GetBookingMembershipByUserRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['status'] = status;
    return data;
  }
}

class GetBookingMembershipByUserResponse {
  int? code;
  List<DataGetBookingMembershipByUserResponse>? data;
  String? message;
  String? status;

  GetBookingMembershipByUserResponse(
      {this.code, this.data, this.message, this.status});

  GetBookingMembershipByUserResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetBookingMembershipByUserResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetBookingMembershipByUserResponse.fromJson(v));
      });
    }
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class DataGetBookingMembershipByUserResponse {
  String? createdAt;
  String? expDate;
  int? id;
  String? joinDate;
  MembershipDataGetBookingMembershipByUserResponse? membership;
  bool? status;
  String? transactionCode;
  String? updatedAt;
  UserDataGetBookingMembershipByUserResponse? user;

  DataGetBookingMembershipByUserResponse(
      {this.createdAt,
      this.expDate,
      this.id,
      this.joinDate,
      this.membership,
      this.status,
      this.transactionCode,
      this.updatedAt,
      this.user});

  DataGetBookingMembershipByUserResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    expDate = json['exp_date'];
    id = json['id'];
    joinDate = json['join_date'];
    membership = json['membership'] != null
        ? MembershipDataGetBookingMembershipByUserResponse.fromJson(json['membership'])
        : null;
    status = json['status'];
    transactionCode = json['transaction_code'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? UserDataGetBookingMembershipByUserResponse.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['exp_date'] = expDate;
    data['id'] = id;
    data['join_date'] = joinDate;
    if (membership != null) {
      data['membership'] = membership!.toJson();
    }
    data['status'] = status;
    data['transaction_code'] = transactionCode;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class MembershipDataGetBookingMembershipByUserResponse {
  String? description;
  int? id;
  int? limitedClass;
  int? limitedTime;
  String? name;
  int? price;

  MembershipDataGetBookingMembershipByUserResponse(
      {this.description,
      this.id,
      this.limitedClass,
      this.limitedTime,
      this.name,
      this.price});

  MembershipDataGetBookingMembershipByUserResponse.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    id = json['id'];
    limitedClass = json['limited_class'];
    limitedTime = json['limited_time'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['id'] = id;
    data['limited_class'] = limitedClass;
    data['limited_time'] = limitedTime;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}

class UserDataGetBookingMembershipByUserResponse {
  String? address;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? id;
  String? name;

  UserDataGetBookingMembershipByUserResponse(
      {this.address,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.id,
      this.name});

  UserDataGetBookingMembershipByUserResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['city'] = city;
    data['email'] = email;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class GetBookingMembershipByIDResponse {
  int? code;
  List<DataGetBookingMembershipByIDResponse>? data;
  String? message;
  String? status;

  GetBookingMembershipByIDResponse(
      {this.code, this.data, this.message, this.status});

  GetBookingMembershipByIDResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetBookingMembershipByIDResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetBookingMembershipByIDResponse.fromJson(v));
      });
    }
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class DataGetBookingMembershipByIDResponse {
  String? createdAt;
  String? expDate;
  int? id;
  String? joinDate;
  MembershipDataGetBookingMembershipByIDResponse? membership;
  bool? status;
  String? transactionCode;
  String? updatedAt;
  UserDataGetBookingMembershipByIDResponse? user;

  DataGetBookingMembershipByIDResponse(
      {this.createdAt,
      this.expDate,
      this.id,
      this.joinDate,
      this.membership,
      this.status,
      this.transactionCode,
      this.updatedAt,
      this.user});

  DataGetBookingMembershipByIDResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    expDate = json['exp_date'];
    id = json['id'];
    joinDate = json['join_date'];
    membership = json['membership'] != null
        ? MembershipDataGetBookingMembershipByIDResponse.fromJson(json['membership'])
        : null;
    status = json['status'];
    transactionCode = json['transaction_code'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? UserDataGetBookingMembershipByIDResponse.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['exp_date'] = expDate;
    data['id'] = id;
    data['join_date'] = joinDate;
    if (membership != null) {
      data['membership'] = membership!.toJson();
    }
    data['status'] = status;
    data['transaction_code'] = transactionCode;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class MembershipDataGetBookingMembershipByIDResponse {
  String? description;
  int? id;
  int? limitedClass;
  int? limitedTime;
  String? name;
  int? price;

  MembershipDataGetBookingMembershipByIDResponse(
      {this.description,
      this.id,
      this.limitedClass,
      this.limitedTime,
      this.name,
      this.price});

  MembershipDataGetBookingMembershipByIDResponse.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    id = json['id'];
    limitedClass = json['limited_class'];
    limitedTime = json['limited_time'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['id'] = id;
    data['limited_class'] = limitedClass;
    data['limited_time'] = limitedTime;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}

class UserDataGetBookingMembershipByIDResponse {
  String? address;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? id;
  String? name;

  UserDataGetBookingMembershipByIDResponse(
      {this.address,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.id,
      this.name});

  UserDataGetBookingMembershipByIDResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['city'] = city;
    data['email'] = email;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

