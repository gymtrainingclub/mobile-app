class GetAllTransactionClassRoleAdministratorRequest {
  String? paymentMethod;
  String? status;
  String? start;
  String? end;

  GetAllTransactionClassRoleAdministratorRequest(
      {this.paymentMethod, this.status, this.start, this.end});

  GetAllTransactionClassRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
    paymentMethod = json['payment_method'];
    status = json['status'];
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['payment_method'] = paymentMethod;
    data['status'] = status;
    data['start'] = start;
    data['end'] = end;
    return data;
  }
}

class GetAllTransactionClassRoleAdministratorResponse {
	int? code;
	List<DataGetAllTransactionClassRoleAdministratorResponse>? data;
	String? message;
	String? status;

	GetAllTransactionClassRoleAdministratorResponse({this.code, this.data, this.message, this.status});

	GetAllTransactionClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		if (json['data'] != null) {
			data = <DataGetAllTransactionClassRoleAdministratorResponse>[];
			json['data'].forEach((v) { data!.add(DataGetAllTransactionClassRoleAdministratorResponse.fromJson(v)); });
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

class DataGetAllTransactionClassRoleAdministratorResponse {
	ClassesDataGetAllTransactionClassRoleAdministratorResponse? classes;
	String? code;
	String? createdAt;
	String? paymentMethod;
	String? status;
	int? totalPrice;
	String? transactionStatusTime;
	String? transactionTime;
	String? type;
	String? updatedAt;
	UserDataGetAllTransactionClassRoleAdministratorResponse? user;
	VaNumberUserDataGetAllTransactionClassRoleAdministratorResponse? vaNumber;

	DataGetAllTransactionClassRoleAdministratorResponse({this.classes, this.code, this.createdAt, this.paymentMethod, this.status, this.totalPrice, this.transactionStatusTime, this.transactionTime, this.type, this.updatedAt, this.user, this.vaNumber});

	DataGetAllTransactionClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
		classes = json['class'] != null ? ClassesDataGetAllTransactionClassRoleAdministratorResponse.fromJson(json['class']) : null;
		code = json['code'];
		createdAt = json['created_at'];
		paymentMethod = json['payment_method'];
		status = json['status'];
		totalPrice = json['total_price'];
		transactionStatusTime = json['transaction_status_time'];
		transactionTime = json['transaction_time'];
		type = json['type'];
		updatedAt = json['updated_at'];
		user = json['user'] != null ? UserDataGetAllTransactionClassRoleAdministratorResponse.fromJson(json['user']) : null;
		vaNumber = json['va_number'] != null ? VaNumberUserDataGetAllTransactionClassRoleAdministratorResponse.fromJson(json['va_number']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (classes != null) {
      data['class'] = classes!.toJson();
    }
		data['code'] = code;
		data['created_at'] = createdAt;
		data['payment_method'] = paymentMethod;
		data['status'] = status;
		data['total_price'] = totalPrice;
		data['transaction_status_time'] = transactionStatusTime;
		data['transaction_time'] = transactionTime;
		data['type'] = type;
		data['updated_at'] = updatedAt;
		if (user != null) {
      data['user'] = user!.toJson();
    }
		if (vaNumber != null) {
      data['va_number'] = vaNumber!.toJson();
    }
		return data;
	}
}

class ClassesDataGetAllTransactionClassRoleAdministratorResponse {
	String? address;
	int? capacity;
	String? description;
	int? duration;
	int? id;
	String? name;
	int? price;
	String? type;

	ClassesDataGetAllTransactionClassRoleAdministratorResponse({this.address, this.capacity, this.description, this.duration, this.id, this.name, this.price, this.type});

	ClassesDataGetAllTransactionClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class UserDataGetAllTransactionClassRoleAdministratorResponse {
	String? address;
	String? city;
	String? email;
	String? gender;
	String? handphone;
	int? id;
	String? name;

	UserDataGetAllTransactionClassRoleAdministratorResponse({this.address, this.city, this.email, this.gender, this.handphone, this.id, this.name});

	UserDataGetAllTransactionClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class VaNumberUserDataGetAllTransactionClassRoleAdministratorResponse {
	String? bank;
	String? vaNumber;

	VaNumberUserDataGetAllTransactionClassRoleAdministratorResponse({this.bank, this.vaNumber});

	VaNumberUserDataGetAllTransactionClassRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
		bank = json['bank'];
		vaNumber = json['va_number'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['bank'] = bank;
		data['va_number'] = vaNumber;
		return data;
	}
}

class PostCreateTransactionClassRequest {
  int? classId;
  String? paymentMethod;

  PostCreateTransactionClassRequest({this.classId, this.paymentMethod});

  PostCreateTransactionClassRequest.fromJson(Map<String, dynamic> json) {
    classId = json['class_id'];
    paymentMethod = json['payment_method'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['class_id'] = classId;
    data['payment_method'] = paymentMethod;
    return data;
  }
}

class PostCreateTransactionClassResponse {
	int? code;
	DataPostCreateTransactionClassResponse? data;
	String? message;
	String? status;

	PostCreateTransactionClassResponse({this.code, this.data, this.message, this.status});

	PostCreateTransactionClassResponse.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		data = json['data'] != null ? DataPostCreateTransactionClassResponse.fromJson(json['data']) : null;
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

class DataPostCreateTransactionClassResponse {
	ClassesDataPostCreateTransactionClassResponse? classes;
	String? code;
	String? createdAt;
	String? paymentMethod;
	String? status;
	int? totalPrice;
	String? transactionStatusTime;
	String? transactionTime;
	String? type;
	String? updatedAt;
	UserDataPostCreateTransactionClassResponse? user;
	VaNumberDataPostCreateTransactionClassResponse? vaNumber;

	DataPostCreateTransactionClassResponse({this.classes, this.code, this.createdAt, this.paymentMethod, this.status, this.totalPrice, this.transactionStatusTime, this.transactionTime, this.type, this.updatedAt, this.user, this.vaNumber});

	DataPostCreateTransactionClassResponse.fromJson(Map<String, dynamic> json) {
		classes = json['class'] != null ? ClassesDataPostCreateTransactionClassResponse.fromJson(json['class']) : null;
		code = json['code'];
		createdAt = json['created_at'];
		paymentMethod = json['payment_method'];
		status = json['status'];
		totalPrice = json['total_price'];
		transactionStatusTime = json['transaction_status_time'];
		transactionTime = json['transaction_time'];
		type = json['type'];
		updatedAt = json['updated_at'];
		user = json['user'] != null ? UserDataPostCreateTransactionClassResponse.fromJson(json['user']) : null;
		vaNumber = json['va_number'] != null ? VaNumberDataPostCreateTransactionClassResponse.fromJson(json['va_number']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (classes != null) {
      data['class'] = classes!.toJson();
    }
		data['code'] = code;
		data['created_at'] = createdAt;
		data['payment_method'] = paymentMethod;
		data['status'] = status;
		data['total_price'] = totalPrice;
		data['transaction_status_time'] = transactionStatusTime;
		data['transaction_time'] = transactionTime;
		data['type'] = type;
		data['updated_at'] = updatedAt;
		if (user != null) {
      data['user'] = user!.toJson();
    }
		if (vaNumber != null) {
      data['va_number'] = vaNumber!.toJson();
    }
		return data;
	}
}

class ClassesDataPostCreateTransactionClassResponse {
	String? address;
	int? capacity;
	String? description;
	int? duration;
	int? id;
	String? name;
	int? price;
	String? type;

	ClassesDataPostCreateTransactionClassResponse({this.address, this.capacity, this.description, this.duration, this.id, this.name, this.price, this.type});

	ClassesDataPostCreateTransactionClassResponse.fromJson(Map<String, dynamic> json) {
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

class UserDataPostCreateTransactionClassResponse {
	String? address;
	String? city;
	String? email;
	String? gender;
	String? handphone;
	int? id;
	String? name;

	UserDataPostCreateTransactionClassResponse({this.address, this.city, this.email, this.gender, this.handphone, this.id, this.name});

	UserDataPostCreateTransactionClassResponse.fromJson(Map<String, dynamic> json) {
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

class VaNumberDataPostCreateTransactionClassResponse {
	String? bank;
	String? vaNumber;

	VaNumberDataPostCreateTransactionClassResponse({this.bank, this.vaNumber});

	VaNumberDataPostCreateTransactionClassResponse.fromJson(Map<String, dynamic> json) {
		bank = json['bank'];
		vaNumber = json['va_number'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['bank'] = bank;
		data['va_number'] = vaNumber;
		return data;
	}
}

class GetTransactionClassByIDResponse {
	int? code;
	DataGetTransactionClassByIDResponse? data;
	String? message;
	String? status;

	GetTransactionClassByIDResponse({this.code, this.data, this.message, this.status});

	GetTransactionClassByIDResponse.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		data = json['data'] != null ? DataGetTransactionClassByIDResponse.fromJson(json['data']) : null;
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

class DataGetTransactionClassByIDResponse {
	ClassDataGetTransactionClassByIDResponse? classes;
	String? code;
	String? createdAt;
	String? paymentMethod;
	String? status;
	int? totalPrice;
	String? transactionStatusTime;
	String? transactionTime;
	String? type;
	String? updatedAt;
	UserDataGetTransactionClassByIDResponse? user;
	VaNumberDataGetTransactionClassByIDResponse? vaNumber;

	DataGetTransactionClassByIDResponse({this.classes, this.code, this.createdAt, this.paymentMethod, this.status, this.totalPrice, this.transactionStatusTime, this.transactionTime, this.type, this.updatedAt, this.user, this.vaNumber});

	DataGetTransactionClassByIDResponse.fromJson(Map<String, dynamic> json) {
		classes = json['class'] != null ? ClassDataGetTransactionClassByIDResponse.fromJson(json['class']) : null;
		code = json['code'];
		createdAt = json['created_at'];
		paymentMethod = json['payment_method'];
		status = json['status'];
		totalPrice = json['total_price'];
		transactionStatusTime = json['transaction_status_time'];
		transactionTime = json['transaction_time'];
		type = json['type'];
		updatedAt = json['updated_at'];
		user = json['user'] != null ? UserDataGetTransactionClassByIDResponse.fromJson(json['user']) : null;
		vaNumber = json['va_number'] != null ? VaNumberDataGetTransactionClassByIDResponse.fromJson(json['va_number']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (classes != null) {
      data['class'] = classes!.toJson();
    }
		data['code'] = code;
		data['created_at'] = createdAt;
		data['payment_method'] = paymentMethod;
		data['status'] = status;
		data['total_price'] = totalPrice;
		data['transaction_status_time'] = transactionStatusTime;
		data['transaction_time'] = transactionTime;
		data['type'] = type;
		data['updated_at'] = updatedAt;
		if (user != null) {
      data['user'] = user!.toJson();
    }
		if (vaNumber != null) {
      data['va_number'] = vaNumber!.toJson();
    }
		return data;
	}
}

class ClassDataGetTransactionClassByIDResponse {
	String? address;
	int? capacity;
	String? description;
	int? duration;
	int? id;
	String? name;
	int? price;
	String? type;

	ClassDataGetTransactionClassByIDResponse({this.address, this.capacity, this.description, this.duration, this.id, this.name, this.price, this.type});

	ClassDataGetTransactionClassByIDResponse.fromJson(Map<String, dynamic> json) {
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

class UserDataGetTransactionClassByIDResponse {
	String? address;
	String? city;
	String? email;
	String? gender;
	String? handphone;
	int? id;
	String? name;

	UserDataGetTransactionClassByIDResponse({this.address, this.city, this.email, this.gender, this.handphone, this.id, this.name});

	UserDataGetTransactionClassByIDResponse.fromJson(Map<String, dynamic> json) {
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

class VaNumberDataGetTransactionClassByIDResponse {
	String? bank;
	String? vaNumber;

	VaNumberDataGetTransactionClassByIDResponse({this.bank, this.vaNumber});

	VaNumberDataGetTransactionClassByIDResponse.fromJson(Map<String, dynamic> json) {
		bank = json['bank'];
		vaNumber = json['va_number'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['bank'] = bank;
		data['va_number'] = vaNumber;
		return data;
	}
}

class GetAllTransactionClassByUserResponse {
	int? code;
	List<DataGetAllTransactionClassByUserResponse>? data;
	String? message;
	String? status;

	GetAllTransactionClassByUserResponse({this.code, this.data, this.message, this.status});

	GetAllTransactionClassByUserResponse.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		if (json['data'] != null) {
			data = <DataGetAllTransactionClassByUserResponse>[];
			json['data'].forEach((v) { data!.add(DataGetAllTransactionClassByUserResponse.fromJson(v)); });
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

class DataGetAllTransactionClassByUserResponse {
	ClassDataGetAllTransactionClassByUserResponse? classes;
	String? code;
	String? createdAt;
	String? paymentMethod;
	String? status;
	int? totalPrice;
	String? transactionStatusTime;
	String? transactionTime;
	String? type;
	String? updatedAt;
	UserDataGetAllTransactionClassByUserResponse? user;
	VaNumberDataGetAllTransactionClassByUserResponse? vaNumber;

	DataGetAllTransactionClassByUserResponse({this.classes, this.code, this.createdAt, this.paymentMethod, this.status, this.totalPrice, this.transactionStatusTime, this.transactionTime, this.type, this.updatedAt, this.user, this.vaNumber});

	DataGetAllTransactionClassByUserResponse.fromJson(Map<String, dynamic> json) {
		classes = json['class'] != null ? ClassDataGetAllTransactionClassByUserResponse.fromJson(json['class']) : null;
		code = json['code'];
		createdAt = json['created_at'];
		paymentMethod = json['payment_method'];
		status = json['status'];
		totalPrice = json['total_price'];
		transactionStatusTime = json['transaction_status_time'];
		transactionTime = json['transaction_time'];
		type = json['type'];
		updatedAt = json['updated_at'];
		user = json['user'] != null ? UserDataGetAllTransactionClassByUserResponse.fromJson(json['user']) : null;
		vaNumber = json['va_number'] != null ? VaNumberDataGetAllTransactionClassByUserResponse.fromJson(json['va_number']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (classes != null) {
      data['class'] = classes!.toJson();
    }
		data['code'] = code;
		data['created_at'] = createdAt;
		data['payment_method'] = paymentMethod;
		data['status'] = status;
		data['total_price'] = totalPrice;
		data['transaction_status_time'] = transactionStatusTime;
		data['transaction_time'] = transactionTime;
		data['type'] = type;
		data['updated_at'] = updatedAt;
		if (user != null) {
      data['user'] = user!.toJson();
    }
		if (vaNumber != null) {
      data['va_number'] = vaNumber!.toJson();
    }
		return data;
	}
}

class ClassDataGetAllTransactionClassByUserResponse {
	String? address;
	int? capacity;
	String? description;
	int? duration;
	int? id;
	String? name;
	int? price;
	String? type;

	ClassDataGetAllTransactionClassByUserResponse({this.address, this.capacity, this.description, this.duration, this.id, this.name, this.price, this.type});

	ClassDataGetAllTransactionClassByUserResponse.fromJson(Map<String, dynamic> json) {
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

class UserDataGetAllTransactionClassByUserResponse {
	String? address;
	String? city;
	String? email;
	String? gender;
	String? handphone;
	int? id;
	String? name;

	UserDataGetAllTransactionClassByUserResponse({this.address, this.city, this.email, this.gender, this.handphone, this.id, this.name});

	UserDataGetAllTransactionClassByUserResponse.fromJson(Map<String, dynamic> json) {
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

class VaNumberDataGetAllTransactionClassByUserResponse {
	String? bank;
	String? vaNumber;

	VaNumberDataGetAllTransactionClassByUserResponse({this.bank, this.vaNumber});

	VaNumberDataGetAllTransactionClassByUserResponse.fromJson(Map<String, dynamic> json) {
		bank = json['bank'];
		vaNumber = json['va_number'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['bank'] = bank;
		data['va_number'] = vaNumber;
		return data;
	}
}

