class GetAllClassRequest {
  String? query;
  String? status;
  String? type;
  String? start;
  String? end;

  GetAllClassRequest(
      {this.query, this.status, this.type, this.start, this.end});

  GetAllClassRequest.fromJson(Map<String, dynamic> json) {
    query = json['query'];
    status = json['status'];
    type = json['type'];
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['query'] = query;
    data['status'] = status;
    data['type'] = type;
    data['start'] = start;
    data['end'] = end;
    return data;
  }
}

class GetAllClassResponse {
  int? code;
  List<DataGetAllClassResponse>? data;
  String? message;
  String? status;

  GetAllClassResponse({this.code, this.data, this.message, this.status});

  GetAllClassResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetAllClassResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetAllClassResponse.fromJson(v));
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

class DataGetAllClassResponse {
  String? address;
  int? capacity;
  CategoryDataGetAllClassResponse? category;
  String? createdAt;
  String? createdBy;
  String? description;
  int? duration;
  String? endDate;
  int? id;
  String? image;
  InstructorDataGetAllClassResponse? instructor;
  int? latitude;
  String? location;
  int? longitude;
  String? name;
  int? price;
  String? startDate;
  bool? status;
  String? type;
  String? updatedAt;
  String? updatedBy;

  DataGetAllClassResponse(
      {this.address,
      this.capacity,
      this.category,
      this.createdAt,
      this.createdBy,
      this.description,
      this.duration,
      this.endDate,
      this.id,
      this.image,
      this.instructor,
      this.latitude,
      this.location,
      this.longitude,
      this.name,
      this.price,
      this.startDate,
      this.status,
      this.type,
      this.updatedAt,
      this.updatedBy});

  DataGetAllClassResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    capacity = json['capacity'];
    category = json['category'] != null
        ? CategoryDataGetAllClassResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    description = json['description'];
    duration = json['duration'];
    endDate = json['end_date'];
    id = json['id'];
    image = json['image'];
    instructor = json['instructor'] != null
        ? InstructorDataGetAllClassResponse.fromJson(json['instructor'])
        : null;
    latitude = json['latitude'];
    location = json['location'];
    longitude = json['longitude'];
    name = json['name'];
    price = json['price'];
    startDate = json['start_date'];
    status = json['status'];
    type = json['type'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['capacity'] = capacity;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['description'] = description;
    data['duration'] = duration;
    data['end_date'] = endDate;
    data['id'] = id;
    data['image'] = image;
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['latitude'] = latitude;
    data['location'] = location;
    data['longitude'] = longitude;
    data['name'] = name;
    data['price'] = price;
    data['start_date'] = startDate;
    data['status'] = status;
    data['type'] = type;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataGetAllClassResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataGetAllClassResponse({this.description, this.id, this.image, this.name});

  CategoryDataGetAllClassResponse.fromJson(Map<String, dynamic> json) {
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

class InstructorDataGetAllClassResponse {
  String? address;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? id;
  String? name;
  String? photo;

  InstructorDataGetAllClassResponse(
      {this.address,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.id,
      this.name,
      this.photo});

  InstructorDataGetAllClassResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
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
    data['photo'] = photo;
    return data;
  }
}

class PostCreateClassRoleAdministratorRequest {
  String? address;
  int? capacity;
  int? categoryId;
  String? description;
  int? duration;
  String? endDate;
  int? instructorId;
  int? latitude;
  String? location;
  int? longitude;
  String? name;
  int? price;
  String? startDate;
  bool? status;
  String? type;

  PostCreateClassRoleAdministratorRequest(
      {this.address,
      this.capacity,
      this.categoryId,
      this.description,
      this.duration,
      this.endDate,
      this.instructorId,
      this.latitude,
      this.location,
      this.longitude,
      this.name,
      this.price,
      this.startDate,
      this.status,
      this.type});

  PostCreateClassRoleAdministratorRequest.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    capacity = json['capacity'];
    categoryId = json['category_id'];
    description = json['description'];
    duration = json['duration'];
    endDate = json['end_date'];
    instructorId = json['instructor_id'];
    latitude = json['latitude'];
    location = json['location'];
    longitude = json['longitude'];
    name = json['name'];
    price = json['price'];
    startDate = json['start_date'];
    status = json['status'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['capacity'] = capacity;
    data['category_id'] = categoryId;
    data['description'] = description;
    data['duration'] = duration;
    data['end_date'] = endDate;
    data['instructor_id'] = instructorId;
    data['latitude'] = latitude;
    data['location'] = location;
    data['longitude'] = longitude;
    data['name'] = name;
    data['price'] = price;
    data['start_date'] = startDate;
    data['status'] = status;
    data['type'] = type;
    return data;
  }
}

class PostCreateClassRoleAdministratorResponse {
  int? code;
  DataPostCreateClassRoleAdministratorResponse? data;
  String? message;
  String? status;

  PostCreateClassRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PostCreateClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostCreateClassRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPostCreateClassRoleAdministratorResponse {
  String? address;
  int? capacity;
  CategoryDataPostCreateClassRoleAdministratorResponse? category;
  String? createdAt;
  String? createdBy;
  String? description;
  int? duration;
  String? endDate;
  int? id;
  String? image;
  InstructorDataPostCreateClassRoleAdministratorResponse? instructor;
  int? latitude;
  String? location;
  int? longitude;
  String? name;
  int? price;
  String? startDate;
  bool? status;
  String? type;
  String? updatedAt;
  String? updatedBy;

  DataPostCreateClassRoleAdministratorResponse(
      {this.address,
      this.capacity,
      this.category,
      this.createdAt,
      this.createdBy,
      this.description,
      this.duration,
      this.endDate,
      this.id,
      this.image,
      this.instructor,
      this.latitude,
      this.location,
      this.longitude,
      this.name,
      this.price,
      this.startDate,
      this.status,
      this.type,
      this.updatedAt,
      this.updatedBy});

  DataPostCreateClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    capacity = json['capacity'];
    category = json['category'] != null
        ? CategoryDataPostCreateClassRoleAdministratorResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    description = json['description'];
    duration = json['duration'];
    endDate = json['end_date'];
    id = json['id'];
    image = json['image'];
    instructor = json['instructor'] != null
        ? InstructorDataPostCreateClassRoleAdministratorResponse.fromJson(json['instructor'])
        : null;
    latitude = json['latitude'];
    location = json['location'];
    longitude = json['longitude'];
    name = json['name'];
    price = json['price'];
    startDate = json['start_date'];
    status = json['status'];
    type = json['type'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['capacity'] = capacity;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['description'] = description;
    data['duration'] = duration;
    data['end_date'] = endDate;
    data['id'] = id;
    data['image'] = image;
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['latitude'] = latitude;
    data['location'] = location;
    data['longitude'] = longitude;
    data['name'] = name;
    data['price'] = price;
    data['start_date'] = startDate;
    data['status'] = status;
    data['type'] = type;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataPostCreateClassRoleAdministratorResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataPostCreateClassRoleAdministratorResponse({this.description, this.id, this.image, this.name});

  CategoryDataPostCreateClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class InstructorDataPostCreateClassRoleAdministratorResponse {
  String? address;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? id;
  String? name;
  String? photo;

  InstructorDataPostCreateClassRoleAdministratorResponse(
      {this.address,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.id,
      this.name,
      this.photo});

  InstructorDataPostCreateClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
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
    data['photo'] = photo;
    return data;
  }
}

class GetClassByCategoryResponse {
  int? code;
  List<DataGetClassByCategoryResponse>? data;
  String? message;
  String? status;

  GetClassByCategoryResponse({this.code, this.data, this.message, this.status});

  GetClassByCategoryResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetClassByCategoryResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetClassByCategoryResponse.fromJson(v));
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

class DataGetClassByCategoryResponse {
  String? address;
  int? capacity;
  CategoryDataGetClassByCategoryResponse? category;
  String? createdAt;
  String? createdBy;
  String? description;
  int? duration;
  String? endDate;
  int? id;
  String? image;
  InstructorDataGetClassByCategoryResponse? instructor;
  int? latitude;
  String? location;
  int? longitude;
  String? name;
  int? price;
  String? startDate;
  bool? status;
  String? type;
  String? updatedAt;
  String? updatedBy;

  DataGetClassByCategoryResponse(
      {this.address,
      this.capacity,
      this.category,
      this.createdAt,
      this.createdBy,
      this.description,
      this.duration,
      this.endDate,
      this.id,
      this.image,
      this.instructor,
      this.latitude,
      this.location,
      this.longitude,
      this.name,
      this.price,
      this.startDate,
      this.status,
      this.type,
      this.updatedAt,
      this.updatedBy});

  DataGetClassByCategoryResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    capacity = json['capacity'];
    category = json['category'] != null
        ? CategoryDataGetClassByCategoryResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    description = json['description'];
    duration = json['duration'];
    endDate = json['end_date'];
    id = json['id'];
    image = json['image'];
    instructor = json['instructor'] != null
        ? InstructorDataGetClassByCategoryResponse.fromJson(json['instructor'])
        : null;
    latitude = json['latitude'];
    location = json['location'];
    longitude = json['longitude'];
    name = json['name'];
    price = json['price'];
    startDate = json['start_date'];
    status = json['status'];
    type = json['type'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['capacity'] = capacity;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['description'] = description;
    data['duration'] = duration;
    data['end_date'] = endDate;
    data['id'] = id;
    data['image'] = image;
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['latitude'] = latitude;
    data['location'] = location;
    data['longitude'] = longitude;
    data['name'] = name;
    data['price'] = price;
    data['start_date'] = startDate;
    data['status'] = status;
    data['type'] = type;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataGetClassByCategoryResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataGetClassByCategoryResponse({this.description, this.id, this.image, this.name});

  CategoryDataGetClassByCategoryResponse.fromJson(Map<String, dynamic> json) {
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

class InstructorDataGetClassByCategoryResponse {
  String? address;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? id;
  String? name;
  String? photo;

  InstructorDataGetClassByCategoryResponse(
      {this.address,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.id,
      this.name,
      this.photo});

  InstructorDataGetClassByCategoryResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
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
    data['photo'] = photo;
    return data;
  }
}

class GetClassByIDResponse {
  int? code;
  DataGetClassByIDResponse? data;
  String? message;
  String? status;

  GetClassByIDResponse({this.code, this.data, this.message, this.status});

  GetClassByIDResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetClassByIDResponse.fromJson(json['data']) : null;
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

class DataGetClassByIDResponse {
  String? address;
  int? capacity;
  CategoryDataGetClassByIDResponse? category;
  String? createdAt;
  String? createdBy;
  String? description;
  int? duration;
  String? endDate;
  int? id;
  String? image;
  InstructorDataGetClassByIDResponse? instructor;
  int? latitude;
  String? location;
  int? longitude;
  String? name;
  int? price;
  String? startDate;
  bool? status;
  String? type;
  String? updatedAt;
  String? updatedBy;

  DataGetClassByIDResponse(
      {this.address,
      this.capacity,
      this.category,
      this.createdAt,
      this.createdBy,
      this.description,
      this.duration,
      this.endDate,
      this.id,
      this.image,
      this.instructor,
      this.latitude,
      this.location,
      this.longitude,
      this.name,
      this.price,
      this.startDate,
      this.status,
      this.type,
      this.updatedAt,
      this.updatedBy});

  DataGetClassByIDResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    capacity = json['capacity'];
    category = json['category'] != null
        ? CategoryDataGetClassByIDResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    description = json['description'];
    duration = json['duration'];
    endDate = json['end_date'];
    id = json['id'];
    image = json['image'];
    instructor = json['instructor'] != null
        ? InstructorDataGetClassByIDResponse.fromJson(json['instructor'])
        : null;
    latitude = json['latitude'];
    location = json['location'];
    longitude = json['longitude'];
    name = json['name'];
    price = json['price'];
    startDate = json['start_date'];
    status = json['status'];
    type = json['type'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['capacity'] = capacity;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['description'] = description;
    data['duration'] = duration;
    data['end_date'] = endDate;
    data['id'] = id;
    data['image'] = image;
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['latitude'] = latitude;
    data['location'] = location;
    data['longitude'] = longitude;
    data['name'] = name;
    data['price'] = price;
    data['start_date'] = startDate;
    data['status'] = status;
    data['type'] = type;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataGetClassByIDResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataGetClassByIDResponse({this.description, this.id, this.image, this.name});

  CategoryDataGetClassByIDResponse.fromJson(Map<String, dynamic> json) {
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

class InstructorDataGetClassByIDResponse {
  String? address;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? id;
  String? name;
  String? photo;

  InstructorDataGetClassByIDResponse(
      {this.address,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.id,
      this.name,
      this.photo});

  InstructorDataGetClassByIDResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
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
    data['photo'] = photo;
    return data;
  }
}

class PutUpdateClassRoleAdministratorRequest {
  String? address;
  int? capacity;
  int? categoryId;
  String? description;
  int? duration;
  String? endDate;
  int? instructorId;
  int? latitude;
  String? location;
  int? longitude;
  String? name;
  int? price;
  String? startDate;
  bool? status;
  String? type;

  PutUpdateClassRoleAdministratorRequest(
      {this.address,
      this.capacity,
      this.categoryId,
      this.description,
      this.duration,
      this.endDate,
      this.instructorId,
      this.latitude,
      this.location,
      this.longitude,
      this.name,
      this.price,
      this.startDate,
      this.status,
      this.type});

  PutUpdateClassRoleAdministratorRequest.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    capacity = json['capacity'];
    categoryId = json['category_id'];
    description = json['description'];
    duration = json['duration'];
    endDate = json['end_date'];
    instructorId = json['instructor_id'];
    latitude = json['latitude'];
    location = json['location'];
    longitude = json['longitude'];
    name = json['name'];
    price = json['price'];
    startDate = json['start_date'];
    status = json['status'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['capacity'] = capacity;
    data['category_id'] = categoryId;
    data['description'] = description;
    data['duration'] = duration;
    data['end_date'] = endDate;
    data['instructor_id'] = instructorId;
    data['latitude'] = latitude;
    data['location'] = location;
    data['longitude'] = longitude;
    data['name'] = name;
    data['price'] = price;
    data['start_date'] = startDate;
    data['status'] = status;
    data['type'] = type;
    return data;
  }
}

class PutUpdateClassRoleAdministratorResponse {
  int? code;
  DataPutUpdateClassRoleAdministratorResponse? data;
  String? message;
  String? status;

  PutUpdateClassRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PutUpdateClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutUpdateClassRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPutUpdateClassRoleAdministratorResponse {
  String? address;
  int? capacity;
  CategoryDataPutUpdateClassRoleAdministratorResponse? category;
  String? createdAt;
  String? createdBy;
  String? description;
  int? duration;
  String? endDate;
  int? id;
  String? image;
  InstructorDataPutUpdateClassRoleAdministratorResponse? instructor;
  int? latitude;
  String? location;
  int? longitude;
  String? name;
  int? price;
  String? startDate;
  bool? status;
  String? type;
  String? updatedAt;
  String? updatedBy;

  DataPutUpdateClassRoleAdministratorResponse(
      {this.address,
      this.capacity,
      this.category,
      this.createdAt,
      this.createdBy,
      this.description,
      this.duration,
      this.endDate,
      this.id,
      this.image,
      this.instructor,
      this.latitude,
      this.location,
      this.longitude,
      this.name,
      this.price,
      this.startDate,
      this.status,
      this.type,
      this.updatedAt,
      this.updatedBy});

  DataPutUpdateClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    capacity = json['capacity'];
    category = json['category'] != null
        ? CategoryDataPutUpdateClassRoleAdministratorResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    description = json['description'];
    duration = json['duration'];
    endDate = json['end_date'];
    id = json['id'];
    image = json['image'];
    instructor = json['instructor'] != null
        ? InstructorDataPutUpdateClassRoleAdministratorResponse.fromJson(json['instructor'])
        : null;
    latitude = json['latitude'];
    location = json['location'];
    longitude = json['longitude'];
    name = json['name'];
    price = json['price'];
    startDate = json['start_date'];
    status = json['status'];
    type = json['type'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['capacity'] = capacity;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['description'] = description;
    data['duration'] = duration;
    data['end_date'] = endDate;
    data['id'] = id;
    data['image'] = image;
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['latitude'] = latitude;
    data['location'] = location;
    data['longitude'] = longitude;
    data['name'] = name;
    data['price'] = price;
    data['start_date'] = startDate;
    data['status'] = status;
    data['type'] = type;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataPutUpdateClassRoleAdministratorResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataPutUpdateClassRoleAdministratorResponse({this.description, this.id, this.image, this.name});

  CategoryDataPutUpdateClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class InstructorDataPutUpdateClassRoleAdministratorResponse {
  String? address;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? id;
  String? name;
  String? photo;

  InstructorDataPutUpdateClassRoleAdministratorResponse(
      {this.address,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.id,
      this.name,
      this.photo});

  InstructorDataPutUpdateClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
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
    data['photo'] = photo;
    return data;
  }
}

class DeleteClassRoleAdministratorResponse {
  int? code;
  DataDeleteClassRoleAdministratorResponse? data;
  String? message;
  String? status;

  DeleteClassRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  DeleteClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataDeleteClassRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataDeleteClassRoleAdministratorResponse {
  String? address;
  int? capacity;
  CategoryDataDeleteClassRoleAdministratorResponse? category;
  String? createdAt;
  String? createdBy;
  String? description;
  int? duration;
  String? endDate;
  int? id;
  String? image;
  InstructorDataDeleteClassRoleAdministratorResponse? instructor;
  int? latitude;
  String? location;
  int? longitude;
  String? name;
  int? price;
  String? startDate;
  bool? status;
  String? type;
  String? updatedAt;
  String? updatedBy;

  DataDeleteClassRoleAdministratorResponse(
      {this.address,
      this.capacity,
      this.category,
      this.createdAt,
      this.createdBy,
      this.description,
      this.duration,
      this.endDate,
      this.id,
      this.image,
      this.instructor,
      this.latitude,
      this.location,
      this.longitude,
      this.name,
      this.price,
      this.startDate,
      this.status,
      this.type,
      this.updatedAt,
      this.updatedBy});

  DataDeleteClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    capacity = json['capacity'];
    category = json['category'] != null
        ? CategoryDataDeleteClassRoleAdministratorResponse.fromJson(json['category'])
        : null;
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    description = json['description'];
    duration = json['duration'];
    endDate = json['end_date'];
    id = json['id'];
    image = json['image'];
    instructor = json['instructor'] != null
        ? InstructorDataDeleteClassRoleAdministratorResponse.fromJson(json['instructor'])
        : null;
    latitude = json['latitude'];
    location = json['location'];
    longitude = json['longitude'];
    name = json['name'];
    price = json['price'];
    startDate = json['start_date'];
    status = json['status'];
    type = json['type'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['capacity'] = capacity;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['description'] = description;
    data['duration'] = duration;
    data['end_date'] = endDate;
    data['id'] = id;
    data['image'] = image;
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['latitude'] = latitude;
    data['location'] = location;
    data['longitude'] = longitude;
    data['name'] = name;
    data['price'] = price;
    data['start_date'] = startDate;
    data['status'] = status;
    data['type'] = type;
    data['updated_at'] = updatedAt;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class CategoryDataDeleteClassRoleAdministratorResponse {
  String? description;
  int? id;
  String? image;
  String? name;

  CategoryDataDeleteClassRoleAdministratorResponse({this.description, this.id, this.image, this.name});

  CategoryDataDeleteClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class InstructorDataDeleteClassRoleAdministratorResponse {
  String? address;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? id;
  String? name;
  String? photo;

  InstructorDataDeleteClassRoleAdministratorResponse(
      {this.address,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.id,
      this.name,
      this.photo});

  InstructorDataDeleteClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
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
    data['photo'] = photo;
    return data;
  }
}

