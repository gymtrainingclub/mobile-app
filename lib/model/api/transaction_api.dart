import 'package:mobileapp/model/n_transaction_class_model.dart';

import 'api_service.dart';

class TransactionAPI {
  Future<GetAllTransactionClassByUserResponse> create() async {
    try {
      final response = await APIService().dio.get(
            'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/transaction',
          );
      return GetAllTransactionClassByUserResponse.fromJson(response.data);
    } catch (e) {
      return GetAllTransactionClassByUserResponse(
        code: 500,
        message: 'Internal Server Error',
        status: 'error',
        data: null,
      );
    }
  }
}
