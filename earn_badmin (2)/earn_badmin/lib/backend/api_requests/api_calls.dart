import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class VoiceOTPCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Voice OTP',
      apiUrl: 'https://www.fast2sms.com/dev/voice',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'variables_values': "258023",
        'route': "otp",
        'numbers': "6393416257",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic requestid(dynamic response) => getJsonField(
        response,
        r'''$.request_id''',
      );
  static dynamic aPIreturn(dynamic response) => getJsonField(
        response,
        r'''$.return''',
      );
}

class SmsOtpCall {
  static Future<ApiCallResponse> call({
    String? otpvalue = '',
    String? numbers = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SMS OTP',
      apiUrl: 'https://www.fast2sms.com/dev/bulkV2',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'otpvalue': otpvalue,
        'route': "otp",
        'numbers': numbers,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? requestid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.request_id''',
      ));
  static bool? aPIreturn(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.return''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
