class GetAllMembershipResponse {
  int? code;
  List<DataGetAllMembershipResponse>? data;
  String? message;
  String? status;

  GetAllMembershipResponse({this.code, this.data, this.message, this.status});

  GetAllMembershipResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetAllMembershipResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetAllMembershipResponse.fromJson(v));
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

class DataGetAllMembershipResponse {
  String? createdAt;
  String? description;
  String? details;
  int? id;
  String? image;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;
  int? price;
  String? updatedAt;

  DataGetAllMembershipResponse(
      {this.createdAt,
      this.description,
      this.details,
      this.id,
      this.image,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name,
      this.price,
      this.updatedAt});

  DataGetAllMembershipResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'];
    details = json['details'];
    id = json['id'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedContent = json['limited_content'];
    limitedTime = json['limited_time'];
    name = json['name'];
    price = json['price'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = description;
    data['details'] = details;
    data['id'] = id;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_content'] = limitedContent;
    data['limited_time'] = limitedTime;
    data['name'] = name;
    data['price'] = price;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class PostCreateMembershipRoleAdministratorRequest {
  String? description;
  String? details;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;
  int? price;

  PostCreateMembershipRoleAdministratorRequest(
      {this.description,
      this.details,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name,
      this.price});

  PostCreateMembershipRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
    description = json['description'];
    details = json['details'];
    limitedClass = json['limited_class'];
    limitedContent = json['limited_content'];
    limitedTime = json['limited_time'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['details'] = details;
    data['limited_class'] = limitedClass;
    data['limited_content'] = limitedContent;
    data['limited_time'] = limitedTime;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}

class PostCreateMembershipRoleAdministratorResponse {
  int? code;
  DataPostCreateMembershipRoleAdministratorResponse? data;
  String? message;
  String? status;

  PostCreateMembershipRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PostCreateMembershipRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostCreateMembershipRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPostCreateMembershipRoleAdministratorResponse {
  String? createdAt;
  String? description;
  String? details;
  int? id;
  String? image;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;
  int? price;
  String? updatedAt;

  DataPostCreateMembershipRoleAdministratorResponse(
      {this.createdAt,
      this.description,
      this.details,
      this.id,
      this.image,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name,
      this.price,
      this.updatedAt});

  DataPostCreateMembershipRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'];
    details = json['details'];
    id = json['id'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedContent = json['limited_content'];
    limitedTime = json['limited_time'];
    name = json['name'];
    price = json['price'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = description;
    data['details'] = details;
    data['id'] = id;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_content'] = limitedContent;
    data['limited_time'] = limitedTime;
    data['name'] = name;
    data['price'] = price;
    data['updated_at'] = updatedAt;
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
  String? createdAt;
  String? description;
  String? details;
  int? id;
  String? image;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;
  int? price;
  String? updatedAt;

  DataGetMembershipByIDResponse(
      {this.createdAt,
      this.description,
      this.details,
      this.id,
      this.image,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name,
      this.price,
      this.updatedAt});

  DataGetMembershipByIDResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'];
    details = json['details'];
    id = json['id'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedContent = json['limited_content'];
    limitedTime = json['limited_time'];
    name = json['name'];
    price = json['price'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = description;
    data['details'] = details;
    data['id'] = id;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_content'] = limitedContent;
    data['limited_time'] = limitedTime;
    data['name'] = name;
    data['price'] = price;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class PutUpdateMembershipRoleAdministratorRequest {
  String? description;
  String? details;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;
  int? price;

  PutUpdateMembershipRoleAdministratorRequest(
      {this.description,
      this.details,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name,
      this.price});

  PutUpdateMembershipRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
    description = json['description'];
    details = json['details'];
    limitedClass = json['limited_class'];
    limitedContent = json['limited_content'];
    limitedTime = json['limited_time'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['details'] = details;
    data['limited_class'] = limitedClass;
    data['limited_content'] = limitedContent;
    data['limited_time'] = limitedTime;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}

class PutUpdateMembershipRoleAdministratorResponse {
  int? code;
  DataPutUpdateMembershipRoleAdministratorResponse? data;
  String? message;
  String? status;

  PutUpdateMembershipRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PutUpdateMembershipRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutUpdateMembershipRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPutUpdateMembershipRoleAdministratorResponse {
  String? createdAt;
  String? description;
  String? details;
  int? id;
  String? image;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;
  int? price;
  String? updatedAt;

  DataPutUpdateMembershipRoleAdministratorResponse(
      {this.createdAt,
      this.description,
      this.details,
      this.id,
      this.image,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name,
      this.price,
      this.updatedAt});

  DataPutUpdateMembershipRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'];
    details = json['details'];
    id = json['id'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedContent = json['limited_content'];
    limitedTime = json['limited_time'];
    name = json['name'];
    price = json['price'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = description;
    data['details'] = details;
    data['id'] = id;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_content'] = limitedContent;
    data['limited_time'] = limitedTime;
    data['name'] = name;
    data['price'] = price;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class DeleteMembershipRoleAdministratorResponse {
  int? code;
  DataDeleteMembershipRoleAdministratorResponse? data;
  String? message;
  String? status;

  DeleteMembershipRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  DeleteMembershipRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataDeleteMembershipRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataDeleteMembershipRoleAdministratorResponse {
  String? createdAt;
  String? description;
  String? details;
  int? id;
  String? image;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;
  int? price;
  String? updatedAt;

  DataDeleteMembershipRoleAdministratorResponse(
      {this.createdAt,
      this.description,
      this.details,
      this.id,
      this.image,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name,
      this.price,
      this.updatedAt});

  DataDeleteMembershipRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'];
    details = json['details'];
    id = json['id'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedContent = json['limited_content'];
    limitedTime = json['limited_time'];
    name = json['name'];
    price = json['price'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = description;
    data['details'] = details;
    data['id'] = id;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_content'] = limitedContent;
    data['limited_time'] = limitedTime;
    data['name'] = name;
    data['price'] = price;
    data['updated_at'] = updatedAt;
    return data;
  }
}
