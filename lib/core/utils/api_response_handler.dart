//import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:news_line_app/core/data/models/error_model.dart';
import 'package:news_line_app/core/utils/failure.dart';

Future apiResponseHandler<T>({
  required Future future,
  required Function(T) right,
  required Function(Failure) left,
}) async {
  if (await InternetConnection().hasInternetAccess) {
    try {
      final result = await future;
      right(result);
    } on DioException catch (dioException) {
      if (dioException.type == DioExceptionType.connectionTimeout) {
        left(
          const Failure.generalFailure(
            message: 'something went wrong please try agin later',
          ),
        );
      }
      left(
        Failure.serverFailure(
          message: ErrorModel.fromJson(dioException.response?.data).message,
        ),
      );
    } catch (e) {
      debugPrint('catch error:${e.toString()}');
      left(
        const Failure.generalFailure(
          message: 'something went wrong please try agin later',
        ),
      );
    }
  } else {
    left(
      const Failure.generalFailure(
        message: 'Please check your internet connection and try agin.',
      ),
    );
  }
}
