class GetBookingClassByUserIDRequest {
  String? id;
  String? status;

  GetBookingClassByUserIDRequest({this.id, this.status});

  GetBookingClassByUserIDRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['status'] = status;
    return data;
  }
}

class GetBookingClassByUserIDResponse {
	int? code;
	List<DataGetBookingClassByUserIDResponse>? data;
	String? message;
	String? status;

	GetBookingClassByUserIDResponse({this.code, this.data, this.message, this.status});

	GetBookingClassByUserIDResponse.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		if (json['data'] != null) {
			data = <DataGetBookingClassByUserIDResponse>[];
			json['data'].forEach((v) { data!.add(DataGetBookingClassByUserIDResponse.fromJson(v)); });
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

class DataGetBookingClassByUserIDResponse {
	ClassesDataGetBookingClassByUserIDResponse? classes;
	String? createdAt;
	String? expDate;
	int? id;
	String? joinDate;
	bool? status;
	String? transactionCode;
	String? updatedAt;
	UserDataGetBookingClassByUserIDResponse? user;

	DataGetBookingClassByUserIDResponse({this.classes, this.createdAt, this.expDate, this.id, this.joinDate, this.status, this.transactionCode, this.updatedAt, this.user});

	DataGetBookingClassByUserIDResponse.fromJson(Map<String, dynamic> json) {
		classes = json['class'] != null ? ClassesDataGetBookingClassByUserIDResponse.fromJson(json['class']) : null;
		createdAt = json['created_at'];
		expDate = json['exp_date'];
		id = json['id'];
		joinDate = json['join_date'];
		status = json['status'];
		transactionCode = json['transaction_code'];
		updatedAt = json['updated_at'];
		user = json['user'] != null ? UserDataGetBookingClassByUserIDResponse.fromJson(json['user']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (classes != null) {
      data['class'] = classes!.toJson();
    }
		data['created_at'] = createdAt;
		data['exp_date'] = expDate;
		data['id'] = id;
		data['join_date'] = joinDate;
		data['status'] = status;
		data['transaction_code'] = transactionCode;
		data['updated_at'] = updatedAt;
		if (user != null) {
      data['user'] = user!.toJson();
    }
		return data;
	}
}

class ClassesDataGetBookingClassByUserIDResponse {
	String? address;
	int? capacity;
	String? description;
	int? duration;
	int? id;
	String? name;
	int? price;
	String? type;

	ClassesDataGetBookingClassByUserIDResponse({this.address, this.capacity, this.description, this.duration, this.id, this.name, this.price, this.type});

	ClassesDataGetBookingClassByUserIDResponse.fromJson(Map<String, dynamic> json) {
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

class UserDataGetBookingClassByUserIDResponse {
	String? address;
	String? city;
	String? email;
	String? gender;
	String? handphone;
	int? id;
	String? name;

	UserDataGetBookingClassByUserIDResponse({this.address, this.city, this.email, this.gender, this.handphone, this.id, this.name});

	UserDataGetBookingClassByUserIDResponse.fromJson(Map<String, dynamic> json) {
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

class GetBookingClassByIDResponse {
	int? code;
	List<DataGetBookingClassByIDResponse>? data;
	String? message;
	String? status;

	GetBookingClassByIDResponse({this.code, this.data, this.message, this.status});

	GetBookingClassByIDResponse.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		if (json['data'] != null) {
			data = <DataGetBookingClassByIDResponse>[];
			json['data'].forEach((v) { data!.add(DataGetBookingClassByIDResponse.fromJson(v)); });
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

class DataGetBookingClassByIDResponse {
	ClassDataGetBookingClassByIDResponse? classes;
	String? createdAt;
	String? expDate;
	int? id;
	String? joinDate;
	bool? status;
	String? transactionCode;
	String? updatedAt;
	UserDataGetBookingClassByIDResponse? user;

	DataGetBookingClassByIDResponse({this.classes, this.createdAt, this.expDate, this.id, this.joinDate, this.status, this.transactionCode, this.updatedAt, this.user});

	DataGetBookingClassByIDResponse.fromJson(Map<String, dynamic> json) {
		classes = json['class'] != null ? ClassDataGetBookingClassByIDResponse.fromJson(json['class']) : null;
		createdAt = json['created_at'];
		expDate = json['exp_date'];
		id = json['id'];
		joinDate = json['join_date'];
		status = json['status'];
		transactionCode = json['transaction_code'];
		updatedAt = json['updated_at'];
		user = json['user'] != null ? UserDataGetBookingClassByIDResponse.fromJson(json['user']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (classes != null) {
      data['class'] = classes!.toJson();
    }
		data['created_at'] = createdAt;
		data['exp_date'] = expDate;
		data['id'] = id;
		data['join_date'] = joinDate;
		data['status'] = status;
		data['transaction_code'] = transactionCode;
		data['updated_at'] = updatedAt;
		if (user != null) {
      data['user'] = user!.toJson();
    }
		return data;
	}
}

class ClassDataGetBookingClassByIDResponse {
	String? address;
	int? capacity;
	String? description;
	int? duration;
	int? id;
	String? name;
	int? price;
	String? type;

	ClassDataGetBookingClassByIDResponse({this.address, this.capacity, this.description, this.duration, this.id, this.name, this.price, this.type});

	ClassDataGetBookingClassByIDResponse.fromJson(Map<String, dynamic> json) {
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

class UserDataGetBookingClassByIDResponse {
	String? address;
	String? city;
	String? email;
	String? gender;
	String? handphone;
	int? id;
	String? name;

	UserDataGetBookingClassByIDResponse({this.address, this.city, this.email, this.gender, this.handphone, this.id, this.name});

	UserDataGetBookingClassByIDResponse.fromJson(Map<String, dynamic> json) {
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
