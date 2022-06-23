class NewsletterGetResponse {
  String? status;
  int? code;
  String? message;
  List<Data>? data;

  NewsletterGetResponse({this.status, this.code, this.message, this.data});

  NewsletterGetResponse.fromJson(Map<String, dynamic> json) {
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
  Category? category;
  int? id;
  String? title;
  String? image;
  String? body;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.category,
      this.id,
      this.title,
      this.image,
      this.body,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    id = json['id'];
    title = json['title'];
    image = json['image'];
    body = json['body'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['body'] = body;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Category {
  int? id;
  String? name;
  String? image;
  String? description;

  Category({this.id, this.name, this.image, this.description});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['description'] = description;
    return data;
  }
}

class NewsletterPostRequest {
  String? title;
  String? image;
  String? body;

  NewsletterPostRequest({this.title, this.image, this.body});

  NewsletterPostRequest.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['image'] = image;
    data['body'] = body;
    return data;
  }
}

class NewsletterPostResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  NewsletterPostResponse({this.status, this.code, this.message, this.data});

  NewsletterPostResponse.fromJson(Map<String, dynamic> json) {
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
  Category? category;
  int? id;
  String? title;
  String? image;
  String? body;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data2(
      {this.category,
      this.id,
      this.title,
      this.image,
      this.body,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Data2.fromJson(Map<String, dynamic> json) {
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    id = json['id'];
    title = json['title'];
    image = json['image'];
    body = json['body'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['body'] = body;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Category2 {
  int? id;
  String? name;
  String? image;
  String? description;

  Category2({this.id, this.name, this.image, this.description});

  Category2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['description'] = description;
    return data;
  }
}

class NewsletterGetByIdResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  NewsletterGetByIdResponse({this.status, this.code, this.message, this.data});

  NewsletterGetByIdResponse.fromJson(Map<String, dynamic> json) {
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
  Category? category;
  int? id;
  String? title;
  String? image;
  String? body;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data3(
      {this.category,
      this.id,
      this.title,
      this.image,
      this.body,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Data3.fromJson(Map<String, dynamic> json) {
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    id = json['id'];
    title = json['title'];
    image = json['image'];
    body = json['body'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['body'] = body;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Category3 {
  int? id;
  String? name;
  String? image;
  String? description;

  Category3({this.id, this.name, this.image, this.description});

  Category3.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['description'] = description;
    return data;
  }
}

class NewsletterPutByIdRequest {
  String? title;
  String? image;
  String? body;

  NewsletterPutByIdRequest({this.title, this.image, this.body});

  NewsletterPutByIdRequest.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['image'] = image;
    data['body'] = body;
    return data;
  }
}

class NewsletterPutByIdResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  NewsletterPutByIdResponse({this.status, this.code, this.message, this.data});

  NewsletterPutByIdResponse.fromJson(Map<String, dynamic> json) {
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
  Category? category;
  int? id;
  String? title;
  String? image;
  String? body;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data4(
      {this.category,
      this.id,
      this.title,
      this.image,
      this.body,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Data4.fromJson(Map<String, dynamic> json) {
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    id = json['id'];
    title = json['title'];
    image = json['image'];
    body = json['body'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['body'] = body;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Category4 {
  int? id;
  String? name;
  String? image;
  String? description;

  Category4({this.id, this.name, this.image, this.description});

  Category4.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['description'] = description;
    return data;
  }
}

class NewsletterDeleteByIdResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  NewsletterDeleteByIdResponse(
      {this.status, this.code, this.message, this.data});

  NewsletterDeleteByIdResponse.fromJson(Map<String, dynamic> json) {
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
  Category? category;
  int? id;
  String? title;
  String? image;
  String? body;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data5(
      {this.category,
      this.id,
      this.title,
      this.image,
      this.body,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Data5.fromJson(Map<String, dynamic> json) {
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    id = json['id'];
    title = json['title'];
    image = json['image'];
    body = json['body'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['body'] = body;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Category5 {
  int? id;
  String? name;
  String? image;
  String? description;

  Category5({this.id, this.name, this.image, this.description});

  Category5.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['description'] = description;
    return data;
  }
}
