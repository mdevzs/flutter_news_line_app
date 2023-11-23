import 'package:dio/dio.dart';
import 'package:news_line_app/core/services/storage_service.dart';

class TokenInterceptor extends Interceptor {
  final StorageService storageService;
  TokenInterceptor(this.storageService);
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'Bearer ${storageService.userToken()}';
    super.onRequest(options, handler);
  }
}
