// import 'package:dio/dio.dart';
// import 'package:women09/view-models/tenant_model.dart';
// import 'package:women09/response/api_response.dart';
// import 'package:women09/services/env_service.dart';
// import 'package:women09/services/log_service.dart';

// class Api {
//   static const authorizationHeader = "authorization";

//   static final Map<String, String> _defaultHeaders = {};

//   static final _options = BaseOptions(
//     baseUrl: EnvService.backendHost,
//   );

//   static final _dio = Dio(_options)
//     ..interceptors.add(
//       _ApiInterceptor(),
//     );

//   static addHeader(String headerName, String value) {
//     _defaultHeaders[headerName] = value;
//   }

//   static removeHeader(String headerName) {
//     _defaultHeaders.remove(headerName);
//   }

//   static Future<ApiResponse> _request(
//     String path, {
//     required String method,
//     Map<String, String>? headers,
//     Object? data,
//     String? contentType,
//     bool isIncludeTenant = true,
//     Map<String, dynamic>? params,
//     String? requestId,
//   }) async {
//     String requestPath = '';
//     if (isIncludeTenant) {
//       requestPath = '/${TenantModel.marketName}$path';
//     } else {
//       requestPath = path;
//     }

//     try {
//       final options = Options(
//         method: method,
//         headers: {
//           ...?headers,
//           ..._defaultHeaders,
//         },
//         contentType: contentType,
//       );

//       final response = await _dio.request(
//         requestPath,
//         options: options,
//         data: data,
//         queryParameters: params,
//       );

//       return ApiResponse(
//         response: response,
//         requestId: requestId,
//       );
//     } catch (e) {
//       return ApiResponse(exception: e);
//     }
//   }

//   static Future<ApiResponse> get(
//     String path, {
//     Object? data,
//     Map<String, String>? headers,
//     bool isIncludeTenant = true,
//     Map<String, dynamic>? params,
//     String? requestId,
//   }) async {
//     return _request(
//       path,
//       method: 'GET',
//       headers: headers,
//       isIncludeTenant: isIncludeTenant,
//       params: params,
//       data: data,
//       requestId: requestId,
//     );
//   }

//   static Future<ApiResponse> post(
//     String path, {
//     Object? data,
//     String? contentType,
//     bool isIncludeTenant = true,
//   }) async {
//     return _request(
//       path,
//       method: 'POST',
//       data: data,
//       contentType: contentType,
//       isIncludeTenant: isIncludeTenant,
//     );
//   }

//   static Future<ApiResponse> put(
//     String path, {
//     Object? data,
//     String? contentType,
//     bool isIncludeTenant = true,
//     Map<String, String>? headers,
//   }) async {
//     return _request(
//       path,
//       method: 'PUT',
//       data: data,
//       contentType: contentType,
//       isIncludeTenant: isIncludeTenant,
//       headers: headers,
//     );
//   }

//   static Future<ApiResponse> delete(
//     String path, {
//     Object? data,
//     String? contentType,
//     bool isIncludeTenant = true,
//   }) async {
//     return _request(
//       path,
//       method: 'DELETE',
//       data: data,
//       contentType: contentType,
//       isIncludeTenant: isIncludeTenant,
//     );
//   }
// }

// class _ApiInterceptor extends Interceptor {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     LogService.info('[${options.method}] ${options.uri}');
//     super.onRequest(options, handler);
//   }

//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) {
//     handler.reject(err);
//   }
// }
