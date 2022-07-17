class GetAllScheduleByClass {
	int? code;
	List<DataGetAllScheduleByClass>? data;
	String? message;
	String? status;

	GetAllScheduleByClass({this.code, this.data, this.message, this.status});

	GetAllScheduleByClass.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		if (json['data'] != null) {
			data = <DataGetAllScheduleByClass>[];
			json['data'].forEach((v) { data!.add(DataGetAllScheduleByClass.fromJson(v)); });
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

class DataGetAllScheduleByClass {
	ClassesDataGetAllScheduleByClass? classes;
	String? createdAt;
	String? createdBy;
	String? date;
	String? endTime;
	int? id;
	String? location;
	String? startTime;
	String? updatedAt;
	String? updatedBy;

	DataGetAllScheduleByClass({this.classes, this.createdAt, this.createdBy, this.date, this.endTime, this.id, this.location, this.startTime, this.updatedAt, this.updatedBy});

	DataGetAllScheduleByClass.fromJson(Map<String, dynamic> json) {
		classes = json['class'] != null ? ClassesDataGetAllScheduleByClass.fromJson(json['class']) : null;
		createdAt = json['created_at'];
		createdBy = json['created_by'];
		date = json['date'];
		endTime = json['end_time'];
		id = json['id'];
		location = json['location'];
		startTime = json['start_time'];
		updatedAt = json['updated_at'];
		updatedBy = json['updated_by'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (classes != null) {
      data['class'] = classes!.toJson();
    }
		data['created_at'] = createdAt;
		data['created_by'] = createdBy;
		data['date'] = date;
		data['end_time'] = endTime;
		data['id'] = id;
		data['location'] = location;
		data['start_time'] = startTime;
		data['updated_at'] = updatedAt;
		data['updated_by'] = updatedBy;
		return data;
	}
}

class ClassesDataGetAllScheduleByClass {
	String? address;
	int? capacity;
	String? description;
	int? duration;
	int? id;
	String? name;
	int? price;
	String? type;

	ClassesDataGetAllScheduleByClass({this.address, this.capacity, this.description, this.duration, this.id, this.name, this.price, this.type});

	ClassesDataGetAllScheduleByClass.fromJson(Map<String, dynamic> json) {
		address = json['address'];
		capacity = json['capacity'];
		description = json['description'];
		duration = json['duration'];
		id = json['id'];
		name = json['name'];
		price = json['price'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['address'] = address;
		data['capacity'] = capacity;
		data['description'] = description;
		data['duration'] = duration;
		data['id'] = id;
		data['name'] = name;
		data['price'] = price;
		data['type'] = type;
		return data;
	}
}

class PostCreateScheduleRoleAdministratorRequest {
  int? classId;
  String? date;
  String? location;
  String? startTime;

  PostCreateScheduleRoleAdministratorRequest(
      {this.classId, this.date, this.location, this.startTime});

  PostCreateScheduleRoleAdministratorRequest.fromJson(Map<String, dynamic> json) {
    classId = json['class_id'];
    date = json['date'];
    location = json['location'];
    startTime = json['start_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['class_id'] = classId;
    data['date'] = date;
    data['location'] = location;
    data['start_time'] = startTime;
    return data;
  }
}

class PostCreateScheduleRoleAdministratorResponse {
	int? code;
	DataPostCreateScheduleRoleAdministratorResponse? data;
	String? message;
	String? status;

	PostCreateScheduleRoleAdministratorResponse({this.code, this.data, this.message, this.status});

	PostCreateScheduleRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		data = json['data'] != null ? DataPostCreateScheduleRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPostCreateScheduleRoleAdministratorResponse {
	ClassesDataPostCreateScheduleRoleAdministratorResponse? classes;
	String? createdAt;
	String? createdBy;
	String? date;
	String? endTime;
	int? id;
	String? location;
	String? startTime;
	String? updatedAt;
	String? updatedBy;

	DataPostCreateScheduleRoleAdministratorResponse({this.classes, this.createdAt, this.createdBy, this.date, this.endTime, this.id, this.location, this.startTime, this.updatedAt, this.updatedBy});

	DataPostCreateScheduleRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
		classes = json['class'] != null ? ClassesDataPostCreateScheduleRoleAdministratorResponse.fromJson(json['class']) : null;
		createdAt = json['created_at'];
		createdBy = json['created_by'];
		date = json['date'];
		endTime = json['end_time'];
		id = json['id'];
		location = json['location'];
		startTime = json['start_time'];
		updatedAt = json['updated_at'];
		updatedBy = json['updated_by'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (classes != null) {
      data['class'] = classes!.toJson();
    }
		data['created_at'] = createdAt;
		data['created_by'] = createdBy;
		data['date'] = date;
		data['end_time'] = endTime;
		data['id'] = id;
		data['location'] = location;
		data['start_time'] = startTime;
		data['updated_at'] = updatedAt;
		data['updated_by'] = updatedBy;
		return data;
	}
}

class ClassesDataPostCreateScheduleRoleAdministratorResponse {
	String? address;
	int? capacity;
	String? description;
	int? duration;
	int? id;
	String? name;
	int? price;
	String? type;

	ClassesDataPostCreateScheduleRoleAdministratorResponse({this.address, this.capacity, this.description, this.duration, this.id, this.name, this.price, this.type});

	ClassesDataPostCreateScheduleRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
		address = json['address'];
		capacity = json['capacity'];
		description = json['description'];
		duration = json['duration'];
		id = json['id'];
		name = json['name'];
		price = json['price'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['address'] = address;
		data['capacity'] = capacity;
		data['description'] = description;
		data['duration'] = duration;
		data['id'] = id;
		data['name'] = name;
		data['price'] = price;
		data['type'] = type;
		return data;
	}
}

class GetScheduleByIDResponse {
	int? code;
	DataGetScheduleByIDResponse? data;
	String? message;
	String? status;

	GetScheduleByIDResponse({this.code, this.data, this.message, this.status});

	GetScheduleByIDResponse.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		data = json['data'] != null ? DataGetScheduleByIDResponse.fromJson(json['data']) : null;
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

class DataGetScheduleByIDResponse {
	ClassesDataGetScheduleByIDResponse? classes;
	String? createdAt;
	String? createdBy;
	String? date;
	String? endTime;
	int? id;
	String? location;
	String? startTime;
	String? updatedAt;
	String? updatedBy;

	DataGetScheduleByIDResponse({this.classes, this.createdAt, this.createdBy, this.date, this.endTime, this.id, this.location, this.startTime, this.updatedAt, this.updatedBy});

	DataGetScheduleByIDResponse.fromJson(Map<String, dynamic> json) {
		classes = json['class'] != null ? ClassesDataGetScheduleByIDResponse.fromJson(json['class']) : null;
		createdAt = json['created_at'];
		createdBy = json['created_by'];
		date = json['date'];
		endTime = json['end_time'];
		id = json['id'];
		location = json['location'];
		startTime = json['start_time'];
		updatedAt = json['updated_at'];
		updatedBy = json['updated_by'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (classes != null) {
      data['class'] = classes!.toJson();
    }
		data['created_at'] = createdAt;
		data['created_by'] = createdBy;
		data['date'] = date;
		data['end_time'] = endTime;
		data['id'] = id;
		data['location'] = location;
		data['start_time'] = startTime;
		data['updated_at'] = updatedAt;
		data['updated_by'] = updatedBy;
		return data;
	}
}

class ClassesDataGetScheduleByIDResponse {
	String? address;
	int? capacity;
	String? description;
	int? duration;
	int? id;
	String? name;
	int? price;
	String? type;

	ClassesDataGetScheduleByIDResponse({this.address, this.capacity, this.description, this.duration, this.id, this.name, this.price, this.type});

	ClassesDataGetScheduleByIDResponse.fromJson(Map<String, dynamic> json) {
		address = json['address'];
		capacity = json['capacity'];
		description = json['description'];
		duration = json['duration'];
		id = json['id'];
		name = json['name'];
		price = json['price'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['address'] = address;
		data['capacity'] = capacity;
		data['description'] = description;
		data['duration'] = duration;
		data['id'] = id;
		data['name'] = name;
		data['price'] = price;
		data['type'] = type;
		return data;
	}
}

class PutUpdateScheduleRoleAdministratorRequest {
  int? classId;
  String? date;
  String? location;
  String? startTime;

  PutUpdateScheduleRoleAdministratorRequest(
      {this.classId, this.date, this.location, this.startTime});

  PutUpdateScheduleRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
    classId = json['class_id'];
    date = json['date'];
    location = json['location'];
    startTime = json['start_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['class_id'] = classId;
    data['date'] = date;
    data['location'] = location;
    data['start_time'] = startTime;
    return data;
  }
}

class PutUpdateScheduleRoleAdministratorResponse {
	int? code;
	DataPutUpdateScheduleRoleAdministratorResponse? data;
	String? message;
	String? status;

	PutUpdateScheduleRoleAdministratorResponse({this.code, this.data, this.message, this.status});

	PutUpdateScheduleRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		data = json['data'] != null ? DataPutUpdateScheduleRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPutUpdateScheduleRoleAdministratorResponse {
	ClassesDataPutUpdateScheduleRoleAdministratorResponse? classes;
	String? createdAt;
	String? createdBy;
	String? date;
	String? endTime;
	int? id;
	String? location;
	String? startTime;
	String? updatedAt;
	String? updatedBy;

	DataPutUpdateScheduleRoleAdministratorResponse({this.classes, this.createdAt, this.createdBy, this.date, this.endTime, this.id, this.location, this.startTime, this.updatedAt, this.updatedBy});

	DataPutUpdateScheduleRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
		classes = json['class'] != null ? ClassesDataPutUpdateScheduleRoleAdministratorResponse.fromJson(json['class']) : null;
		createdAt = json['created_at'];
		createdBy = json['created_by'];
		date = json['date'];
		endTime = json['end_time'];
		id = json['id'];
		location = json['location'];
		startTime = json['start_time'];
		updatedAt = json['updated_at'];
		updatedBy = json['updated_by'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (classes != null) {
      data['class'] = classes!.toJson();
    }
		data['created_at'] = createdAt;
		data['created_by'] = createdBy;
		data['date'] = date;
		data['end_time'] = endTime;
		data['id'] = id;
		data['location'] = location;
		data['start_time'] = startTime;
		data['updated_at'] = updatedAt;
		data['updated_by'] = updatedBy;
		return data;
	}
}

class ClassesDataPutUpdateScheduleRoleAdministratorResponse {
	String? address;
	int? capacity;
	String? description;
	int? duration;
	int? id;
	String? name;
	int? price;
	String? type;

	ClassesDataPutUpdateScheduleRoleAdministratorResponse({this.address, this.capacity, this.description, this.duration, this.id, this.name, this.price, this.type});

	ClassesDataPutUpdateScheduleRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
		address = json['address'];
		capacity = json['capacity'];
		description = json['description'];
		duration = json['duration'];
		id = json['id'];
		name = json['name'];
		price = json['price'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['address'] = address;
		data['capacity'] = capacity;
		data['description'] = description;
		data['duration'] = duration;
		data['id'] = id;
		data['name'] = name;
		data['price'] = price;
		data['type'] = type;
		return data;
	}
}

class DeleteScheduleRoleAdministratorResponse {
	int? code;
	DataDeleteScheduleRoleAdministratorResponse? data;
	String? message;
	String? status;

	DeleteScheduleRoleAdministratorResponse({this.code, this.data, this.message, this.status});

	DeleteScheduleRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		data = json['data'] != null ? DataDeleteScheduleRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataDeleteScheduleRoleAdministratorResponse {
	ClassesDataDeleteScheduleRoleAdministratorResponse? classes;
	String? createdAt;
	String? createdBy;
	String? date;
	String? endTime;
	int? id;
	String? location;
	String? startTime;
	String? updatedAt;
	String? updatedBy;

	DataDeleteScheduleRoleAdministratorResponse({this.classes, this.createdAt, this.createdBy, this.date, this.endTime, this.id, this.location, this.startTime, this.updatedAt, this.updatedBy});

	DataDeleteScheduleRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
		classes = json['class'] != null ? ClassesDataDeleteScheduleRoleAdministratorResponse.fromJson(json['class']) : null;
		createdAt = json['created_at'];
		createdBy = json['created_by'];
		date = json['date'];
		endTime = json['end_time'];
		id = json['id'];
		location = json['location'];
		startTime = json['start_time'];
		updatedAt = json['updated_at'];
		updatedBy = json['updated_by'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (classes != null) {
      data['class'] = classes!.toJson();
    }
		data['created_at'] = createdAt;
		data['created_by'] = createdBy;
		data['date'] = date;
		data['end_time'] = endTime;
		data['id'] = id;
		data['location'] = location;
		data['start_time'] = startTime;
		data['updated_at'] = updatedAt;
		data['updated_by'] = updatedBy;
		return data;
	}
}

class ClassesDataDeleteScheduleRoleAdministratorResponse {
	String? address;
	int? capacity;
	String? description;
	int? duration;
	int? id;
	String? name;
	int? price;
	String? type;

	ClassesDataDeleteScheduleRoleAdministratorResponse({this.address, this.capacity, this.description, this.duration, this.id, this.name, this.price, this.type});

	ClassesDataDeleteScheduleRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
		address = json['address'];
		capacity = json['capacity'];
		description = json['description'];
		duration = json['duration'];
		id = json['id'];
		name = json['name'];
		price = json['price'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['address'] = address;
		data['capacity'] = capacity;
		data['description'] = description;
		data['duration'] = duration;
		data['id'] = id;
		data['name'] = name;
		data['price'] = price;
		data['type'] = type;
		return data;
	}
}

