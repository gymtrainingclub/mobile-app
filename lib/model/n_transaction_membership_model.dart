class GetAllTransactionMembershipRoleAdministratorRequest {
  String? paymentMethod;
  String? status;
  String? start;
  String? end;

  GetAllTransactionMembershipRoleAdministratorRequest(
      {this.paymentMethod, this.status, this.start, this.end});

  GetAllTransactionMembershipRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
    paymentMethod = json['payment_method'];
    status = json['status'];
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['payment_method'] = paymentMethod;
    data['status'] = status;
    data['start'] = start;
    data['end'] = end;
    return data;
  }
}

class PostCreateTransactionMembershipRequest {
  int? membershipId;
  String? paymentMethod;

  PostCreateTransactionMembershipRequest(
      {this.membershipId, this.paymentMethod});

  PostCreateTransactionMembershipRequest.fromJson(Map<String, dynamic> json) {
    membershipId = json['membership_id'];
    paymentMethod = json['payment_method'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['membership_id'] = membershipId;
    data['payment_method'] = paymentMethod;
    return data;
  }
}

class PostCreateTransactionMembershipResponse {
  int? code;
  DataPostCreateTransactionMembershipResponse? data;
  String? message;
  String? status;

  PostCreateTransactionMembershipResponse(
      {this.code, this.data, this.message, this.status});

  PostCreateTransactionMembershipResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostCreateTransactionMembershipResponse.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class DataPostCreateTransactionMembershipResponse {
  String? code;
  String? createdAt;
  MembershipDataPostCreateTransactionMembershipResponse? membership;
  String? paymentMethod;
  String? status;
  int? totalPrice;
  String? transactionStatusTime;
  String? transactionTime;
  String? type;
  String? updatedAt;
  UserDataPostCreateTransactionMembershipResponse? user;
  VaNumberDataPostCreateTransactionMembershipResponse? vaNumber;

  DataPostCreateTransactionMembershipResponse(
      {this.code,
      this.createdAt,
      this.membership,
      this.paymentMethod,
      this.status,
      this.totalPrice,
      this.transactionStatusTime,
      this.transactionTime,
      this.type,
      this.updatedAt,
      this.user,
      this.vaNumber});

  DataPostCreateTransactionMembershipResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    createdAt = json['created_at'];
    membership = json['membership'] != null
        ? MembershipDataPostCreateTransactionMembershipResponse.fromJson(json['membership'])
        : null;
    paymentMethod = json['payment_method'];
    status = json['status'];
    totalPrice = json['total_price'];
    transactionStatusTime = json['transaction_status_time'];
    transactionTime = json['transaction_time'];
    type = json['type'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? UserDataPostCreateTransactionMembershipResponse.fromJson(json['user']) : null;
    vaNumber = json['va_number'] != null
        ? VaNumberDataPostCreateTransactionMembershipResponse.fromJson(json['va_number'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['created_at'] = createdAt;
    if (membership != null) {
      data['membership'] = membership!.toJson();
    }
    data['payment_method'] = paymentMethod;
    data['status'] = status;
    data['total_price'] = totalPrice;
    data['transaction_status_time'] = transactionStatusTime;
    data['transaction_time'] = transactionTime;
    data['type'] = type;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (vaNumber != null) {
      data['va_number'] = vaNumber!.toJson();
    }
    return data;
  }
}

class MembershipDataPostCreateTransactionMembershipResponse {
  String? description;
  int? id;
  int? limitedClass;
  int? limitedTime;
  String? name;
  int? price;

  MembershipDataPostCreateTransactionMembershipResponse(
      {this.description,
      this.id,
      this.limitedClass,
      this.limitedTime,
      this.name,
      this.price});

  MembershipDataPostCreateTransactionMembershipResponse.fromJson(Map<String, dynamic> json) {
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

class UserDataPostCreateTransactionMembershipResponse {
  String? address;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? id;
  String? name;

  UserDataPostCreateTransactionMembershipResponse(
      {this.address,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.id,
      this.name});

  UserDataPostCreateTransactionMembershipResponse.fromJson(Map<String, dynamic> json) {
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

class VaNumberDataPostCreateTransactionMembershipResponse {
  String? bank;
  String? vaNumber;

  VaNumberDataPostCreateTransactionMembershipResponse({this.bank, this.vaNumber});

  VaNumberDataPostCreateTransactionMembershipResponse.fromJson(Map<String, dynamic> json) {
    bank = json['bank'];
    vaNumber = json['va_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bank'] = bank;
    data['va_number'] = vaNumber;
    return data;
  }
}

class GetMembershipByIDResponse {
  int? code;
  DataGetMembershipByIDResponse? data;
  String? message;
  String? status;

  GetMembershipByIDResponse({this.code, this.data, this.message, this.status});

  GetMembershipByIDResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetMembershipByIDResponse.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class DataGetMembershipByIDResponse {
  String? code;
  String? createdAt;
  MembershipDataGetMembershipByIDResponse? membership;
  String? paymentMethod;
  String? status;
  int? totalPrice;
  String? transactionStatusTime;
  String? transactionTime;
  String? type;
  String? updatedAt;
  UserDataGetMembershipByIDResponse? user;
  VaNumberDataGetMembershipByIDResponse? vaNumber;

  DataGetMembershipByIDResponse(
      {this.code,
      this.createdAt,
      this.membership,
      this.paymentMethod,
      this.status,
      this.totalPrice,
      this.transactionStatusTime,
      this.transactionTime,
      this.type,
      this.updatedAt,
      this.user,
      this.vaNumber});

  DataGetMembershipByIDResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    createdAt = json['created_at'];
    membership = json['membership'] != null
        ? MembershipDataGetMembershipByIDResponse.fromJson(json['membership'])
        : null;
    paymentMethod = json['payment_method'];
    status = json['status'];
    totalPrice = json['total_price'];
    transactionStatusTime = json['transaction_status_time'];
    transactionTime = json['transaction_time'];
    type = json['type'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? UserDataGetMembershipByIDResponse.fromJson(json['user']) : null;
    vaNumber = json['va_number'] != null
        ? VaNumberDataGetMembershipByIDResponse.fromJson(json['va_number'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['created_at'] = createdAt;
    if (membership != null) {
      data['membership'] = membership!.toJson();
    }
    data['payment_method'] = paymentMethod;
    data['status'] = status;
    data['total_price'] = totalPrice;
    data['transaction_status_time'] = transactionStatusTime;
    data['transaction_time'] = transactionTime;
    data['type'] = type;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (vaNumber != null) {
      data['va_number'] = vaNumber!.toJson();
    }
    return data;
  }
}

class MembershipDataGetMembershipByIDResponse {
  String? description;
  int? id;
  int? limitedClass;
  int? limitedTime;
  String? name;
  int? price;

  MembershipDataGetMembershipByIDResponse(
      {this.description,
      this.id,
      this.limitedClass,
      this.limitedTime,
      this.name,
      this.price});

  MembershipDataGetMembershipByIDResponse.fromJson(Map<String, dynamic> json) {
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

class UserDataGetMembershipByIDResponse {
  String? address;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? id;
  String? name;

  UserDataGetMembershipByIDResponse(
      {this.address,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.id,
      this.name});

  UserDataGetMembershipByIDResponse.fromJson(Map<String, dynamic> json) {
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

class VaNumberDataGetMembershipByIDResponse {
  String? bank;
  String? vaNumber;

  VaNumberDataGetMembershipByIDResponse({this.bank, this.vaNumber});

  VaNumberDataGetMembershipByIDResponse.fromJson(Map<String, dynamic> json) {
    bank = json['bank'];
    vaNumber = json['va_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bank'] = bank;
    data['va_number'] = vaNumber;
    return data;
  }
}

class GetAllTransactionMembershipByUserResponse {
  int? code;
  List<DataGetAllTransactionMembershipByUserResponse>? data;
  String? message;
  String? status;

  GetAllTransactionMembershipByUserResponse(
      {this.code, this.data, this.message, this.status});

  GetAllTransactionMembershipByUserResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetAllTransactionMembershipByUserResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetAllTransactionMembershipByUserResponse.fromJson(v));
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

class DataGetAllTransactionMembershipByUserResponse {
  String? code;
  String? createdAt;
  MembershipDataGetAllTransactionMembershipByUserResponse? membership;
  String? paymentMethod;
  String? status;
  int? totalPrice;
  String? transactionStatusTime;
  String? transactionTime;
  String? type;
  String? updatedAt;
  UserDataGetAllTransactionMembershipByUserResponse? user;
  VaNumberDataGetAllTransactionMembershipByUserResponse? vaNumber;

  DataGetAllTransactionMembershipByUserResponse(
      {this.code,
      this.createdAt,
      this.membership,
      this.paymentMethod,
      this.status,
      this.totalPrice,
      this.transactionStatusTime,
      this.transactionTime,
      this.type,
      this.updatedAt,
      this.user,
      this.vaNumber});

  DataGetAllTransactionMembershipByUserResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    createdAt = json['created_at'];
    membership = json['membership'] != null
        ? MembershipDataGetAllTransactionMembershipByUserResponse.fromJson(json['membership'])
        : null;
    paymentMethod = json['payment_method'];
    status = json['status'];
    totalPrice = json['total_price'];
    transactionStatusTime = json['transaction_status_time'];
    transactionTime = json['transaction_time'];
    type = json['type'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? UserDataGetAllTransactionMembershipByUserResponse.fromJson(json['user']) : null;
    vaNumber = json['va_number'] != null
        ? VaNumberDataGetAllTransactionMembershipByUserResponse.fromJson(json['va_number'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['created_at'] = createdAt;
    if (membership != null) {
      data['membership'] = membership!.toJson();
    }
    data['payment_method'] = paymentMethod;
    data['status'] = status;
    data['total_price'] = totalPrice;
    data['transaction_status_time'] = transactionStatusTime;
    data['transaction_time'] = transactionTime;
    data['type'] = type;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (vaNumber != null) {
      data['va_number'] = vaNumber!.toJson();
    }
    return data;
  }
}

class MembershipDataGetAllTransactionMembershipByUserResponse {
  String? description;
  int? id;
  int? limitedClass;
  int? limitedTime;
  String? name;
  int? price;

  MembershipDataGetAllTransactionMembershipByUserResponse(
      {this.description,
      this.id,
      this.limitedClass,
      this.limitedTime,
      this.name,
      this.price});

  MembershipDataGetAllTransactionMembershipByUserResponse.fromJson(Map<String, dynamic> json) {
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

class UserDataGetAllTransactionMembershipByUserResponse {
  String? address;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? id;
  String? name;

  UserDataGetAllTransactionMembershipByUserResponse(
      {this.address,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.id,
      this.name});

  UserDataGetAllTransactionMembershipByUserResponse.fromJson(Map<String, dynamic> json) {
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

class VaNumberDataGetAllTransactionMembershipByUserResponse {
  String? bank;
  String? vaNumber;

  VaNumberDataGetAllTransactionMembershipByUserResponse({this.bank, this.vaNumber});

  VaNumberDataGetAllTransactionMembershipByUserResponse.fromJson(Map<String, dynamic> json) {
    bank = json['bank'];
    vaNumber = json['va_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bank'] = bank;
    data['va_number'] = vaNumber;
    return data;
  }
}

