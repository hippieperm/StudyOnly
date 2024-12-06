// import 'package:dio/dio.dart';

// import '../services/log_service.dart';

// class ApiResponse {
//   late final bool isResponseSuccess;
//   late final DioException? dioException;
//   final List<ApiErrorModel> errorDetails = [];
//   final Response? response;
//   final String? requestId;

//   ApiResponse({
//     this.response,
//     Object? exception,
//     this.requestId,
//   }) {
//     if (response != null) {
//       dioException = null;
//       isResponseSuccess = true;
//     } else {
//       dioException = exception as DioException;
//       isResponseSuccess = false;
//       if (dioException!.response != null) {
//         if (dioException!.response!.data is Map) {
//           final responseData = dioException!.response!.data['detail'];

//           if (responseData is String) {
//             errorDetails.add(
//               ApiErrorModel(
//                 loc: [],
//                 message: responseData,
//                 type: '',
//               ),
//             );
//             LogService.error(
//               '[${exception.requestOptions.method}] [${exception.response?.statusCode ?? ''}] ${exception.response?.data['detail'] ?? ''}\n${exception.requestOptions.uri}',
//               isSimpleLog: true,
//             );
//           } else if (responseData == null) {
//             errorDetails.add(
//               ApiErrorModel(
//                 loc: [],
//                 message: dioException!.response?.data['message'] ?? '',
//                 type: '',
//               ),
//             );
//             LogService.error(
//               '[${exception.requestOptions.method}] [${exception.response?.statusCode ?? ''}] ${dioException!.response?.data['message'] ?? ''}\n${exception.requestOptions.uri}',
//               isSimpleLog: true,
//             );
//           } else {
//             for (Map<String, dynamic> detail in responseData) {
//               errorDetails.add(ApiErrorModel.fromJson(detail));
//             }
//             LogService.error(
//               '[${exception.requestOptions.method}] [${exception.response?.statusCode ?? ''}] ${exception.response?.data['detail']?[0]?['msg'] ?? ''}\n${exception.requestOptions.uri}',
//               isSimpleLog: true,
//             );
//           }
//           return;
//         }
//         LogService.error(
//           '[${exception.requestOptions.method}] [${exception.response?.statusCode ?? ''}] ${exception.response?.data}\n${exception.requestOptions.uri}',
//           isSimpleLog: true,
//         );
//       }
//     }
//   }

//   String? firstErrorDetails() {
//     if (errorDetails.isEmpty) return null;

//     return errorDetails.first.message;
//   }
// }

// class ApiErrorModel {
//   final List<dynamic> loc;
//   final String message;
//   final String type;

//   ApiErrorModel({
//     required this.loc,
//     required this.message,
//     required this.type,
//   });

//   factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
//     return ApiErrorModel(
//       loc: json['loc'] ?? [],
//       message: json['msg'] ?? '',
//       type: json['type'] ?? '',
//     );
//   }

//   bool checkContainText(String text) {
//     return loc.contains(text);
//   }
// }
