class ClassGetResponse {
  String? status;
  int? code;
  String? message;
  List<Data>? data;

  ClassGetResponse({this.status, this.code, this.message, this.data});

  ClassGetResponse.fromJson(Map<String, dynamic> json) {
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
  Instructor? instructor;
  int? id;
  String? name;
  String? type;
  int? status;
  int? duration;
  String? location;
  String? latitude;
  String? longitude;
  String? address;
  String? image;
  String? description;
  int? price;
  String? startDate;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.category,
      this.instructor,
      this.id,
      this.name,
      this.type,
      this.status,
      this.duration,
      this.location,
      this.latitude,
      this.longitude,
      this.address,
      this.image,
      this.description,
      this.price,
      this.startDate,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    instructor = json['instructor'] != null
        ? Instructor.fromJson(json['instructor'])
        : null;
    id = json['id'];
    name = json['name'];
    type = json['type'];
    status = json['status'];
    duration = json['duration'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    startDate = json['start_date'];
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
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    data['status'] = status;
    data['duration'] = duration;
    data['location'] = location;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['address'] = address;
    data['image'] = image;
    data['description'] = description;
    data['price'] = price;
    data['start_date'] = startDate;
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

class Instructor {
  int? id;
  String? name;
  String? gender;
  String? handphone;
  String? email;
  String? photo;

  Instructor(
      {this.id,
      this.name,
      this.gender,
      this.handphone,
      this.email,
      this.photo});

  Instructor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    handphone = json['handphone'];
    email = json['email'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['email'] = email;
    data['photo'] = photo;
    return data;
  }
}

class ClassPostRequest {
  int? categoryId;
  int? instructorId;
  String? name;
  String? type;
  int? status;
  int? duration;
  String? location;
  String? latitude;
  String? longitude;
  String? address;
  String? image;
  String? description;
  int? price;
  String? startDate;

  ClassPostRequest(
      {this.categoryId,
      this.instructorId,
      this.name,
      this.type,
      this.status,
      this.duration,
      this.location,
      this.latitude,
      this.longitude,
      this.address,
      this.image,
      this.description,
      this.price,
      this.startDate});

  ClassPostRequest.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    instructorId = json['instructor_id'];
    name = json['name'];
    type = json['type'];
    status = json['status'];
    duration = json['duration'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    startDate = json['start_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category_id'] = categoryId;
    data['instructor_id'] = instructorId;
    data['name'] = name;
    data['type'] = type;
    data['status'] = status;
    data['duration'] = duration;
    data['location'] = location;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['address'] = address;
    data['image'] = image;
    data['description'] = description;
    data['price'] = price;
    data['start_date'] = startDate;
    return data;
  }
}

class ClassPostResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  ClassPostResponse({this.status, this.code, this.message, this.data});

  ClassPostResponse.fromJson(Map<String, dynamic> json) {
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
  Instructor? instructor;
  int? id;
  String? name;
  String? type;
  int? status;
  int? duration;
  String? location;
  String? latitude;
  String? longitude;
  String? address;
  String? image;
  String? description;
  int? price;
  String? startDate;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data2(
      {this.category,
      this.instructor,
      this.id,
      this.name,
      this.type,
      this.status,
      this.duration,
      this.location,
      this.latitude,
      this.longitude,
      this.address,
      this.image,
      this.description,
      this.price,
      this.startDate,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Data2.fromJson(Map<String, dynamic> json) {
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    instructor = json['instructor'] != null
        ? Instructor.fromJson(json['instructor'])
        : null;
    id = json['id'];
    name = json['name'];
    type = json['type'];
    status = json['status'];
    duration = json['duration'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    startDate = json['start_date'];
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
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    data['status'] = status;
    data['duration'] = duration;
    data['location'] = location;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['address'] = address;
    data['image'] = image;
    data['description'] = description;
    data['price'] = price;
    data['start_date'] = startDate;
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

class Instructor2 {
  int? id;
  String? name;
  String? gender;
  String? handphone;
  String? email;
  String? photo;

  Instructor2(
      {this.id,
      this.name,
      this.gender,
      this.handphone,
      this.email,
      this.photo});

  Instructor2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    handphone = json['handphone'];
    email = json['email'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['email'] = email;
    data['photo'] = photo;
    return data;
  }
}

class ClassGetByIdResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  ClassGetByIdResponse({this.status, this.code, this.message, this.data});

  ClassGetByIdResponse.fromJson(Map<String, dynamic> json) {
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
  Instructor? instructor;
  int? id;
  String? name;
  String? type;
  int? status;
  int? duration;
  String? location;
  String? latitude;
  String? longitude;
  String? address;
  String? image;
  String? description;
  int? price;
  String? startDate;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data3(
      {this.category,
      this.instructor,
      this.id,
      this.name,
      this.type,
      this.status,
      this.duration,
      this.location,
      this.latitude,
      this.longitude,
      this.address,
      this.image,
      this.description,
      this.price,
      this.startDate,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Data3.fromJson(Map<String, dynamic> json) {
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    instructor = json['instructor'] != null
        ? Instructor.fromJson(json['instructor'])
        : null;
    id = json['id'];
    name = json['name'];
    type = json['type'];
    status = json['status'];
    duration = json['duration'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    startDate = json['start_date'];
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
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    data['status'] = status;
    data['duration'] = duration;
    data['location'] = location;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['address'] = address;
    data['image'] = image;
    data['description'] = description;
    data['price'] = price;
    data['start_date'] = startDate;
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

class Instructor3 {
  int? id;
  String? name;
  String? gender;
  String? handphone;
  String? email;
  String? photo;

  Instructor3(
      {this.id,
      this.name,
      this.gender,
      this.handphone,
      this.email,
      this.photo});

  Instructor3.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    handphone = json['handphone'];
    email = json['email'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['email'] = email;
    data['photo'] = photo;
    return data;
  }
}

class ClassPutByIdRequest {
  int? categoryId;
  int? instructorId;
  String? name;
  String? type;
  int? status;
  int? duration;
  String? location;
  String? latitude;
  String? longitude;
  String? address;
  String? image;
  String? description;
  int? price;
  String? startDate;

  ClassPutByIdRequest(
      {this.categoryId,
      this.instructorId,
      this.name,
      this.type,
      this.status,
      this.duration,
      this.location,
      this.latitude,
      this.longitude,
      this.address,
      this.image,
      this.description,
      this.price,
      this.startDate});

  ClassPutByIdRequest.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    instructorId = json['instructor_id'];
    name = json['name'];
    type = json['type'];
    status = json['status'];
    duration = json['duration'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    startDate = json['start_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category_id'] = categoryId;
    data['instructor_id'] = instructorId;
    data['name'] = name;
    data['type'] = type;
    data['status'] = status;
    data['duration'] = duration;
    data['location'] = location;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['address'] = address;
    data['image'] = image;
    data['description'] = description;
    data['price'] = price;
    data['start_date'] = startDate;
    return data;
  }
}

class ClassPutByIdResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  ClassPutByIdResponse({this.status, this.code, this.message, this.data});

  ClassPutByIdResponse.fromJson(Map<String, dynamic> json) {
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
  Instructor? instructor;
  int? id;
  String? name;
  String? type;
  int? status;
  int? duration;
  String? location;
  String? latitude;
  String? longitude;
  String? address;
  String? image;
  String? description;
  int? price;
  String? startDate;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data4(
      {this.category,
      this.instructor,
      this.id,
      this.name,
      this.type,
      this.status,
      this.duration,
      this.location,
      this.latitude,
      this.longitude,
      this.address,
      this.image,
      this.description,
      this.price,
      this.startDate,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Data4.fromJson(Map<String, dynamic> json) {
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    instructor = json['instructor'] != null
        ? Instructor.fromJson(json['instructor'])
        : null;
    id = json['id'];
    name = json['name'];
    type = json['type'];
    status = json['status'];
    duration = json['duration'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    startDate = json['start_date'];
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
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    data['status'] = status;
    data['duration'] = duration;
    data['location'] = location;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['address'] = address;
    data['image'] = image;
    data['description'] = description;
    data['price'] = price;
    data['start_date'] = startDate;
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

class Instructor4 {
  int? id;
  String? name;
  String? gender;
  String? handphone;
  String? email;
  String? photo;

  Instructor4(
      {this.id,
      this.name,
      this.gender,
      this.handphone,
      this.email,
      this.photo});

  Instructor4.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    handphone = json['handphone'];
    email = json['email'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['email'] = email;
    data['photo'] = photo;
    return data;
  }
}

class ClassDeleteByIdResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  ClassDeleteByIdResponse({this.status, this.code, this.message, this.data});

  ClassDeleteByIdResponse.fromJson(Map<String, dynamic> json) {
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
  Instructor? instructor;
  int? id;
  String? name;
  String? type;
  int? status;
  int? duration;
  String? location;
  String? latitude;
  String? longitude;
  String? address;
  String? image;
  String? description;
  int? price;
  String? startDate;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data5(
      {this.category,
      this.instructor,
      this.id,
      this.name,
      this.type,
      this.status,
      this.duration,
      this.location,
      this.latitude,
      this.longitude,
      this.address,
      this.image,
      this.description,
      this.price,
      this.startDate,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Data5.fromJson(Map<String, dynamic> json) {
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    instructor = json['instructor'] != null
        ? Instructor.fromJson(json['instructor'])
        : null;
    id = json['id'];
    name = json['name'];
    type = json['type'];
    status = json['status'];
    duration = json['duration'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    startDate = json['start_date'];
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
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    data['status'] = status;
    data['duration'] = duration;
    data['location'] = location;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['address'] = address;
    data['image'] = image;
    data['description'] = description;
    data['price'] = price;
    data['start_date'] = startDate;
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

class Instructor5 {
  int? id;
  String? name;
  String? gender;
  String? handphone;
  String? email;
  String? photo;

  Instructor5(
      {this.id,
      this.name,
      this.gender,
      this.handphone,
      this.email,
      this.photo});

  Instructor5.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    handphone = json['handphone'];
    email = json['email'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['email'] = email;
    data['photo'] = photo;
    return data;
  }
}
