class GetAllContentRequest {
  String? query;
  String? start;
  String? end;

  GetAllContentRequest({this.query, this.start, this.end});

  GetAllContentRequest.fromJson(Map<String, dynamic> json) {
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

class GetAllContentResponse {
  int? code;
  List<DataGetAllContentResponse>? data;
  String? message;
  String? status;

  GetAllContentResponse({this.code, this.data, this.message, this.status});

  GetAllContentResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetAllContentResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetAllContentResponse.fromJson(v));
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

class DataGetAllContentResponse {
  CategoryDataGetAllContentResponse? category;
  String? createdAt;
  String? createdBy;
  String? description;
  int? id;
  String? image;
  String? linkVideo;
  String? title;
  String? updatedAt;
  String? updatedBy;

  DataGetAllContentResponse(
      {this.category,
      this.createdAt,
      this.createdBy,
      this.description,
      this.id,
      this.image,
      this.linkVideo,
      this.title,
      this.updatedAt,
      this.updatedBy});

  DataGetAllContentResponse.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? CategoryDataGetAllContentResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    linkVideo = json['link_video'];
    title = json['title'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['link_video'] = linkVideo;
    data['title'] = title;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataGetAllContentResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataGetAllContentResponse({this.description, this.id, this.image, this.name});

  CategoryDataGetAllContentResponse.fromJson(Map<String, dynamic> json) {
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

class PostCreateContentRoleAdministratorRequest {
  int? categoryId;
  String? description;
  String? linkVideo;
  String? title;

  PostCreateContentRoleAdministratorRequest(
      {this.categoryId, this.description, this.linkVideo, this.title});

  PostCreateContentRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
    categoryId = json['category_id'];
    description = json['description'];
    linkVideo = json['link_video'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category_id'] = categoryId;
    data['description'] = description;
    data['link_video'] = linkVideo;
    data['title'] = title;
    return data;
  }
}

class PostCreateContentRoleAdministratorResponse {
  int? code;
  DataPostCreateContentRoleAdministratorResponse? data;
  String? message;
  String? status;

  PostCreateContentRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PostCreateContentRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostCreateContentRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPostCreateContentRoleAdministratorResponse {
  CategoryDataPostCreateContentRoleAdministratorResponse? category;
  String? createdAt;
  String? createdBy;
  String? description;
  int? id;
  String? image;
  String? linkVideo;
  String? title;
  String? updatedAt;
  String? updatedBy;

  DataPostCreateContentRoleAdministratorResponse(
      {this.category,
      this.createdAt,
      this.createdBy,
      this.description,
      this.id,
      this.image,
      this.linkVideo,
      this.title,
      this.updatedAt,
      this.updatedBy});

  DataPostCreateContentRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? CategoryDataPostCreateContentRoleAdministratorResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    linkVideo = json['link_video'];
    title = json['title'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['link_video'] = linkVideo;
    data['title'] = title;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataPostCreateContentRoleAdministratorResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataPostCreateContentRoleAdministratorResponse({this.description, this.id, this.image, this.name});

  CategoryDataPostCreateContentRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class GetContentByCategoryResponse {
  int? code;
  List<DataGetContentByCategoryResponse>? data;
  String? message;
  String? status;

  GetContentByCategoryResponse(
      {this.code, this.data, this.message, this.status});

  GetContentByCategoryResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetContentByCategoryResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetContentByCategoryResponse.fromJson(v));
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

class DataGetContentByCategoryResponse {
  CategoryDataGetContentByCategoryResponse? category;
  String? createdAt;
  String? createdBy;
  String? description;
  int? id;
  String? image;
  String? linkVideo;
  String? title;
  String? updatedAt;
  String? updatedBy;

  DataGetContentByCategoryResponse(
      {this.category,
      this.createdAt,
      this.createdBy,
      this.description,
      this.id,
      this.image,
      this.linkVideo,
      this.title,
      this.updatedAt,
      this.updatedBy});

  DataGetContentByCategoryResponse.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? CategoryDataGetContentByCategoryResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    linkVideo = json['link_video'];
    title = json['title'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['link_video'] = linkVideo;
    data['title'] = title;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataGetContentByCategoryResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataGetContentByCategoryResponse({this.description, this.id, this.image, this.name});

  CategoryDataGetContentByCategoryResponse.fromJson(Map<String, dynamic> json) {
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

class GetContentByIDResponse {
  int? code;
  DataGetContentByIDResponse? data;
  String? message;
  String? status;

  GetContentByIDResponse({this.code, this.data, this.message, this.status});

  GetContentByIDResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetContentByIDResponse.fromJson(json['data']) : null;
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

class DataGetContentByIDResponse {
  CategoryDataGetContentByIDResponse? category;
  String? createdAt;
  String? createdBy;
  String? description;
  int? id;
  String? image;
  String? linkVideo;
  String? title;
  String? updatedAt;
  String? updatedBy;

  DataGetContentByIDResponse(
      {this.category,
      this.createdAt,
      this.createdBy,
      this.description,
      this.id,
      this.image,
      this.linkVideo,
      this.title,
      this.updatedAt,
      this.updatedBy});

  DataGetContentByIDResponse.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? CategoryDataGetContentByIDResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    linkVideo = json['link_video'];
    title = json['title'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['link_video'] = linkVideo;
    data['title'] = title;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataGetContentByIDResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataGetContentByIDResponse({this.description, this.id, this.image, this.name});

  CategoryDataGetContentByIDResponse.fromJson(Map<String, dynamic> json) {
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

class PutUpdateContentRoleAdministratorRequest {
  int? categoryId;
  String? description;
  String? linkVideo;
  String? title;

  PutUpdateContentRoleAdministratorRequest(
      {this.categoryId, this.description, this.linkVideo, this.title});

  PutUpdateContentRoleAdministratorRequest.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    description = json['description'];
    linkVideo = json['link_video'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category_id'] = categoryId;
    data['description'] = description;
    data['link_video'] = linkVideo;
    data['title'] = title;
    return data;
  }
}

class PutUpdateContentRoleAdministratorResponse {
  int? code;
  DataPutUpdateContentRoleAdministratorResponse? data;
  String? message;
  String? status;

  PutUpdateContentRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PutUpdateContentRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutUpdateContentRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPutUpdateContentRoleAdministratorResponse {
  CategoryDataPutUpdateContentRoleAdministratorResponse? category;
  String? createdAt;
  String? createdBy;
  String? description;
  int? id;
  String? image;
  String? linkVideo;
  String? title;
  String? updatedAt;
  String? updatedBy;

  DataPutUpdateContentRoleAdministratorResponse(
      {this.category,
      this.createdAt,
      this.createdBy,
      this.description,
      this.id,
      this.image,
      this.linkVideo,
      this.title,
      this.updatedAt,
      this.updatedBy});

  DataPutUpdateContentRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? CategoryDataPutUpdateContentRoleAdministratorResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    linkVideo = json['link_video'];
    title = json['title'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['link_video'] = linkVideo;
    data['title'] = title;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataPutUpdateContentRoleAdministratorResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataPutUpdateContentRoleAdministratorResponse({this.description, this.id, this.image, this.name});

  CategoryDataPutUpdateContentRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class DeleteContentRoleAdministratorResponse {
  int? code;
  DataDeleteContentRoleAdministratorResponse? data;
  String? message;
  String? status;

  DeleteContentRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  DeleteContentRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataDeleteContentRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataDeleteContentRoleAdministratorResponse {
  CategoryDataDeleteContentRoleAdministratorResponse? category;
  String? createdAt;
  String? createdBy;
  String? description;
  int? id;
  String? image;
  String? linkVideo;
  String? title;
  String? updatedAt;
  String? updatedBy;

  DataDeleteContentRoleAdministratorResponse(
      {this.category,
      this.createdAt,
      this.createdBy,
      this.description,
      this.id,
      this.image,
      this.linkVideo,
      this.title,
      this.updatedAt,
      this.updatedBy});

  DataDeleteContentRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? CategoryDataDeleteContentRoleAdministratorResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    linkVideo = json['link_video'];
    title = json['title'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['description'] = description;
    data['id'] = id;
    data['image'] = image;
    data['link_video'] = linkVideo;
    data['title'] = title;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataDeleteContentRoleAdministratorResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataDeleteContentRoleAdministratorResponse({this.description, this.id, this.image, this.name});

  CategoryDataDeleteContentRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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
