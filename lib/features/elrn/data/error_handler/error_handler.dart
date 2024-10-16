import 'dart:io';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../core/logs/write_logs_to_storage.dart';
import '../../presentation/widgets/toasts.dart';

DioException errorHandler(DioException e) {

  if(e is SocketException){
    showErrorToast('no_internet'.tr());
  }
  // print(e.requestOptions.path);

  try {
    if (e.response?.statusCode == 401) {
      // showErrorToast('unauthorized'.tr());
      return DioException(error: 'unauthorized'.tr(), requestOptions: RequestOptions(path: ''));
    }
    if (e.error is SocketException) {
      // Handling SocketException separately
      return e;
    } else if (e.response?.data != null) {
      if (e.response?.data?.toString().contains('errors') ?? false) {
        final errors = e.response!.data['errors'];
        if (errors != null) {
          for (var key in errors.keys) {
            final errorMessage = errors[key][0];
            showErrorToast(errorMessage);
            // print('Validation Error: Message - $errorMessage');

            // Creating a new DioException for validation error
            e = DioException(error: errorMessage, requestOptions: RequestOptions(path: ''));
            return (e);
          }
        }
      }
    }

    // If it's not a validation error or any specific key, return the original error
    // print('Error: ${e.error}--------------------------');
    return (e);
  } on Error catch (handleError) {
    // print('Error: $handleError at errorHandler');
    // print(e.stackTrace);
 //   writeLogsToStorage(handleError.toString());

    return (e);
  }
}
