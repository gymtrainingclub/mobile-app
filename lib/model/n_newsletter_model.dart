class GetAllNewsletterRequest {
  String? query;
  String? start;
  String? end;

  GetAllNewsletterRequest({this.query, this.start, this.end});

  GetAllNewsletterRequest.fromJson(Map<String, dynamic> json) {
    query = json['query'];
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['query'] = query;
    data['start'] = start;
    data['end'] = end;
    return data;
  }
}

class GetAllNewsletterResponse {
  int? code;
  List<DataGetAllNewsletterResponse>? data;
  String? message;
  String? status;

  GetAllNewsletterResponse({this.code, this.data, this.message, this.status});

  GetAllNewsletterResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetAllNewsletterResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetAllNewsletterResponse.fromJson(v));
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

class DataGetAllNewsletterResponse {
  String? body;
  CategoryDataGetAllNewsletterResponse? category;
  String? createdAt;
  String? createdBy;
  int? id;
  String? image;
  String? title;
  String? updatedAt;
  String? updatedBy;

  DataGetAllNewsletterResponse(
      {this.body,
      this.category,
      this.createdAt,
      this.createdBy,
      this.id,
      this.image,
      this.title,
      this.updatedAt,
      this.updatedBy});

  DataGetAllNewsletterResponse.fromJson(Map<String, dynamic> json) {
    body = json['body'];
    category = json['category'] != null
        ? CategoryDataGetAllNewsletterResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    id = json['id'];
    image = json['image'];
    title = json['title'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['body'] = body;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataGetAllNewsletterResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataGetAllNewsletterResponse({this.description, this.id, this.image, this.name});

  CategoryDataGetAllNewsletterResponse.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}

class PostCreateNewsletterRoleAdministratorRequest {
  String? body;
  int? categoryId;
  String? title;

  PostCreateNewsletterRoleAdministratorRequest(
      {this.body, this.categoryId, this.title});

  PostCreateNewsletterRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
    body = json['body'];
    categoryId = json['category_id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['body'] = body;
    data['category_id'] = categoryId;
    data['title'] = title;
    return data;
  }
}

class PostCreateNewsletterRoleAdministratorResponse {
  int? code;
  DataPostCreateNewsletterRoleAdministratorResponse? data;
  String? message;
  String? status;

  PostCreateNewsletterRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PostCreateNewsletterRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostCreateNewsletterRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPostCreateNewsletterRoleAdministratorResponse {
  String? body;
  CategoryDataPostCreateNewsletterRoleAdministratorResponse? category;
  String? createdAt;
  String? createdBy;
  int? id;
  String? image;
  String? title;
  String? updatedAt;
  String? updatedBy;

  DataPostCreateNewsletterRoleAdministratorResponse(
      {this.body,
      this.category,
      this.createdAt,
      this.createdBy,
      this.id,
      this.image,
      this.title,
      this.updatedAt,
      this.updatedBy});

  DataPostCreateNewsletterRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    body = json['body'];
    category = json['category'] != null
        ? CategoryDataPostCreateNewsletterRoleAdministratorResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    id = json['id'];
    image = json['image'];
    title = json['title'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['body'] = body;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataPostCreateNewsletterRoleAdministratorResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataPostCreateNewsletterRoleAdministratorResponse({this.description, this.id, this.image, this.name});

  CategoryDataPostCreateNewsletterRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}

class GetNewsletterByCategoryResponse {
  int? code;
  List<DataGetNewsletterByCategoryResponse>? data;
  String? message;
  String? status;

  GetNewsletterByCategoryResponse(
      {this.code, this.data, this.message, this.status});

  GetNewsletterByCategoryResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetNewsletterByCategoryResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetNewsletterByCategoryResponse.fromJson(v));
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

class DataGetNewsletterByCategoryResponse {
  String? body;
  CategoryDataGetNewsletterByCategoryResponse? category;
  String? createdAt;
  String? createdBy;
  int? id;
  String? image;
  String? title;
  String? updatedAt;
  String? updatedBy;

  DataGetNewsletterByCategoryResponse(
      {this.body,
      this.category,
      this.createdAt,
      this.createdBy,
      this.id,
      this.image,
      this.title,
      this.updatedAt,
      this.updatedBy});

  DataGetNewsletterByCategoryResponse.fromJson(Map<String, dynamic> json) {
    body = json['body'];
    category = json['category'] != null
        ? CategoryDataGetNewsletterByCategoryResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    id = json['id'];
    image = json['image'];
    title = json['title'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['body'] = body;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataGetNewsletterByCategoryResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataGetNewsletterByCategoryResponse({this.description, this.id, this.image, this.name});

  CategoryDataGetNewsletterByCategoryResponse.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}

class GetNewsletterByIDResponse {
  int? code;
  DataGetNewsletterByIDResponse? data;
  String? message;
  String? status;

  GetNewsletterByIDResponse({this.code, this.data, this.message, this.status});

  GetNewsletterByIDResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetNewsletterByIDResponse.fromJson(json['data']) : null;
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

class DataGetNewsletterByIDResponse {
  String? body;
  CategoryDataGetNewsletterByIDResponse? category;
  String? createdAt;
  String? createdBy;
  int? id;
  String? image;
  String? title;
  String? updatedAt;
  String? updatedBy;

  DataGetNewsletterByIDResponse(
      {this.body,
      this.category,
      this.createdAt,
      this.createdBy,
      this.id,
      this.image,
      this.title,
      this.updatedAt,
      this.updatedBy});

  DataGetNewsletterByIDResponse.fromJson(Map<String, dynamic> json) {
    body = json['body'];
    category = json['category'] != null
        ? CategoryDataGetNewsletterByIDResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    id = json['id'];
    image = json['image'];
    title = json['title'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['body'] = body;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataGetNewsletterByIDResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataGetNewsletterByIDResponse({this.description, this.id, this.image, this.name});

  CategoryDataGetNewsletterByIDResponse.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}

class PutUpdateNewsletterRoleAdministratorRequest {
  String? body;
  int? categoryId;
  String? title;

  PutUpdateNewsletterRoleAdministratorRequest(
      {this.body, this.categoryId, this.title});

  PutUpdateNewsletterRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
    body = json['body'];
    categoryId = json['category_id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['body'] = body;
    data['category_id'] = categoryId;
    data['title'] = title;
    return data;
  }
}

class PutUpdateNewsletterRoleAdministratorResponse {
  int? code;
  DataPutUpdateNewsletterRoleAdministratorResponse? data;
  String? message;
  String? status;

  PutUpdateNewsletterRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PutUpdateNewsletterRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutUpdateNewsletterRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPutUpdateNewsletterRoleAdministratorResponse {
  String? body;
  CategoryDataPutUpdateNewsletterRoleAdministratorResponse? category;
  String? createdAt;
  String? createdBy;
  int? id;
  String? image;
  String? title;
  String? updatedAt;
  String? updatedBy;

  DataPutUpdateNewsletterRoleAdministratorResponse(
      {this.body,
      this.category,
      this.createdAt,
      this.createdBy,
      this.id,
      this.image,
      this.title,
      this.updatedAt,
      this.updatedBy});

  DataPutUpdateNewsletterRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    body = json['body'];
    category = json['category'] != null
        ? CategoryDataPutUpdateNewsletterRoleAdministratorResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    id = json['id'];
    image = json['image'];
    title = json['title'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['body'] = body;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataPutUpdateNewsletterRoleAdministratorResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataPutUpdateNewsletterRoleAdministratorResponse({this.description, this.id, this.image, this.name});

  CategoryDataPutUpdateNewsletterRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}

class DeleteNewsletterRoleAdministratorResponse {
  int? code;
  DataDeleteNewsletterRoleAdministratorResponse? data;
  String? message;
  String? status;

  DeleteNewsletterRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  DeleteNewsletterRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataDeleteNewsletterRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataDeleteNewsletterRoleAdministratorResponse {
  String? body;
  CategoryDataDeleteNewsletterRoleAdministratorResponse? category;
  String? createdAt;
  String? createdBy;
  int? id;
  String? image;
  String? title;
  String? updatedAt;
  String? updatedBy;

  DataDeleteNewsletterRoleAdministratorResponse(
      {this.body,
      this.category,
      this.createdAt,
      this.createdBy,
      this.id,
      this.image,
      this.title,
      this.updatedAt,
      this.updatedBy});

  DataDeleteNewsletterRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    body = json['body'];
    category = json['category'] != null
        ? CategoryDataDeleteNewsletterRoleAdministratorResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    id = json['id'];
    image = json['image'];
    title = json['title'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['body'] = body;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataDeleteNewsletterRoleAdministratorResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataDeleteNewsletterRoleAdministratorResponse({this.description, this.id, this.image, this.name});

  CategoryDataDeleteNewsletterRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}
