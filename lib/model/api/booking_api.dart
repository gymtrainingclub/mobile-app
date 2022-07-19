import 'package:mobileapp/model/n_booking_class_model.dart';

import 'api_service.dart';

class BookingAPI {
  Future<DataGetBookingClassByIDResponse> createBooking() async {
    try {
      final response = await APIService().dio.get(
            'https://virtserver.swaggerhub.com/imanuelpay/gym-api/1.0.0/booking',
          );
      return DataGetBookingClassByIDResponse.fromJson(response.data);
    } catch (e) {
      return DataGetBookingClassByIDResponse(
        classes: null,
        createdAt: null,
        expDate: null,
        id: null,
        joinDate: null,
        status: false,
        transactionCode: null,
        updatedAt: null,
        user: null,
      );
    }
  }
}
