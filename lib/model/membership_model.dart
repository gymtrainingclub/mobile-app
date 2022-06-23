class MembershipGetResponse {
  String? status;
  int? code;
  String? message;
  List<Data>? data;

  MembershipGetResponse({this.status, this.code, this.message, this.data});

  MembershipGetResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? image;
  int? limitedClass;
  int? limitedTime;
  String? description;
  String? details;
  int? price;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.name,
      this.image,
      this.limitedClass,
      this.limitedTime,
      this.description,
      this.details,
      this.price,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedTime = json['limited_time'];
    description = json['description'];
    details = json['details'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_time'] = limitedTime;
    data['description'] = description;
    data['details'] = details;
    data['price'] = price;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class MembershipPostRequest {
  String? name;
  String? image;
  int? limitedClass;
  int? limitedTime;
  String? description;
  String? details;
  int? price;

  MembershipPostRequest(
      {this.name,
      this.image,
      this.limitedClass,
      this.limitedTime,
      this.description,
      this.details,
      this.price});

  MembershipPostRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedTime = json['limited_time'];
    description = json['description'];
    details = json['details'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_time'] = limitedTime;
    data['description'] = description;
    data['details'] = details;
    data['price'] = price;
    return data;
  }
}

class MembershipPostResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  MembershipPostResponse({this.status, this.code, this.message, this.data});

  MembershipPostResponse.fromJson(Map<String, dynamic> json) {
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

class Data2 {
  int? id;
  String? name;
  String? image;
  int? limitedClass;
  int? limitedTime;
  String? description;
  String? details;
  int? price;
  String? createdAt;
  String? updatedAt;

  Data2(
      {this.id,
      this.name,
      this.image,
      this.limitedClass,
      this.limitedTime,
      this.description,
      this.details,
      this.price,
      this.createdAt,
      this.updatedAt});

  Data2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedTime = json['limited_time'];
    description = json['description'];
    details = json['details'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_time'] = limitedTime;
    data['description'] = description;
    data['details'] = details;
    data['price'] = price;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class MembershipGetByIdResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  MembershipGetByIdResponse({this.status, this.code, this.message, this.data});

  MembershipGetByIdResponse.fromJson(Map<String, dynamic> json) {
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

class Data3 {
  int? id;
  String? name;
  String? image;
  int? limitedClass;
  int? limitedTime;
  String? description;
  String? details;
  int? price;
  String? createdAt;
  String? updatedAt;

  Data3(
      {this.id,
      this.name,
      this.image,
      this.limitedClass,
      this.limitedTime,
      this.description,
      this.details,
      this.price,
      this.createdAt,
      this.updatedAt});

  Data3.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedTime = json['limited_time'];
    description = json['description'];
    details = json['details'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_time'] = limitedTime;
    data['description'] = description;
    data['details'] = details;
    data['price'] = price;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class MembershipPutByIdRequest {
  String? name;
  String? image;
  int? limitedClass;
  int? limitedTime;
  String? description;
  String? details;
  int? price;

  MembershipPutByIdRequest(
      {this.name,
      this.image,
      this.limitedClass,
      this.limitedTime,
      this.description,
      this.details,
      this.price});

  MembershipPutByIdRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedTime = json['limited_time'];
    description = json['description'];
    details = json['details'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_time'] = limitedTime;
    data['description'] = description;
    data['details'] = details;
    data['price'] = price;
    return data;
  }
}

class MembershipPutByIdResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  MembershipPutByIdResponse({this.status, this.code, this.message, this.data});

  MembershipPutByIdResponse.fromJson(Map<String, dynamic> json) {
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

class Data4 {
  int? id;
  String? name;
  String? image;
  int? limitedClass;
  int? limitedTime;
  String? description;
  String? details;
  int? price;
  String? createdAt;
  String? updatedAt;

  Data4(
      {this.id,
      this.name,
      this.image,
      this.limitedClass,
      this.limitedTime,
      this.description,
      this.details,
      this.price,
      this.createdAt,
      this.updatedAt});

  Data4.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedTime = json['limited_time'];
    description = json['description'];
    details = json['details'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_time'] = limitedTime;
    data['description'] = description;
    data['details'] = details;
    data['price'] = price;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class MembershipDeleteByIdResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  MembershipDeleteByIdResponse(
      {this.status, this.code, this.message, this.data});

  MembershipDeleteByIdResponse.fromJson(Map<String, dynamic> json) {
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

class Data5 {
  int? id;
  String? name;
  String? image;
  int? limitedClass;
  int? limitedTime;
  String? description;
  String? details;
  int? price;
  String? createdAt;
  String? updatedAt;

  Data5(
      {this.id,
      this.name,
      this.image,
      this.limitedClass,
      this.limitedTime,
      this.description,
      this.details,
      this.price,
      this.createdAt,
      this.updatedAt});

  Data5.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedTime = json['limited_time'];
    description = json['description'];
    details = json['details'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_time'] = limitedTime;
    data['description'] = description;
    data['details'] = details;
    data['price'] = price;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
