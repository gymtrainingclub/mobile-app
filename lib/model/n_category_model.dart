class GetAllCategoriesResponse {
  int? code;
  List<DataGetAllCategoriesResponse>? data;
  String? message;
  String? status;

  GetAllCategoriesResponse({this.code, this.data, this.message, this.status});

  GetAllCategoriesResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetAllCategoriesResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetAllCategoriesResponse.fromJson(v));
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

class DataGetAllCategoriesResponse {
  String? createdAt;
  String? description;
  int? id;
  String? image;
  String? name;
  String? updatedAt;

  DataGetAllCategoriesResponse(
      {this.createdAt,
      this.description,
      this.id,
      this.image,
      this.name,
      this.updatedAt});

  DataGetAllCategoriesResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class PostCreateCategoryRoleAdministratorRequest {
  String? description;
  String? name;

  PostCreateCategoryRoleAdministratorRequest({this.description, this.name});

  PostCreateCategoryRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
    description = json['description'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['name'] = name;
    return data;
  }
}

class PostCreateCategoryRoleAdministratorResponse {
  int? code;
  DataPostCreateCategoryRoleAdministratorResponse? data;
  String? message;
  String? status;

  PostCreateCategoryRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PostCreateCategoryRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostCreateCategoryRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPostCreateCategoryRoleAdministratorResponse {
  String? createdAt;
  String? description;
  int? id;
  String? image;
  String? name;
  String? updatedAt;

  DataPostCreateCategoryRoleAdministratorResponse(
      {this.createdAt,
      this.description,
      this.id,
      this.image,
      this.name,
      this.updatedAt});

  DataPostCreateCategoryRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class GetCategoryByIDResponse {
  int? code;
  DataGetCategoryByIDResponse? data;
  String? message;
  String? status;

  GetCategoryByIDResponse({this.code, this.data, this.message, this.status});

  GetCategoryByIDResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetCategoryByIDResponse.fromJson(json['data']) : null;
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

class DataGetCategoryByIDResponse {
  String? createdAt;
  String? description;
  int? id;
  String? image;
  String? name;
  String? updatedAt;

  DataGetCategoryByIDResponse(
      {this.createdAt,
      this.description,
      this.id,
      this.image,
      this.name,
      this.updatedAt});

  DataGetCategoryByIDResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class PutUpdateCategoryRoleAdministratorRequest {
  String? description;
  String? name;

  PutUpdateCategoryRoleAdministratorRequest({this.description, this.name});

  PutUpdateCategoryRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
    description = json['description'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['name'] = name;
    return data;
  }
}

class PutUpdateCategoryRoleAdministratorResponse {
  int? code;
  DataPutUpdateCategoryRoleAdministratorResponse? data;
  String? message;
  String? status;

  PutUpdateCategoryRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PutUpdateCategoryRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutUpdateCategoryRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPutUpdateCategoryRoleAdministratorResponse {
  String? createdAt;
  String? description;
  int? id;
  String? image;
  String? name;
  String? updatedAt;

  DataPutUpdateCategoryRoleAdministratorResponse(
      {this.createdAt,
      this.description,
      this.id,
      this.image,
      this.name,
      this.updatedAt});

  DataPutUpdateCategoryRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class DeleteCategoryRoleAdministratorResponse {
  int? code;
  DataDeleteCategoryRoleAdministratorResponse? data;
  String? message;
  String? status;

  DeleteCategoryRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  DeleteCategoryRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataDeleteCategoryRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataDeleteCategoryRoleAdministratorResponse {
  String? createdAt;
  String? description;
  int? id;
  String? image;
  String? name;
  String? updatedAt;

  DataDeleteCategoryRoleAdministratorResponse(
      {this.createdAt,
      this.description,
      this.id,
      this.image,
      this.name,
      this.updatedAt});

  DataDeleteCategoryRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    data['updated_at'] = updatedAt;
    return data;
  }
}

