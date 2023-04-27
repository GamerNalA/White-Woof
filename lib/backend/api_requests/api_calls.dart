import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ChatGptCall {
  static Future<ApiCallResponse> call({
    dynamic? messagesJson,
  }) {
    final messages = _serializeJson(messagesJson);
    final body = '''
{
  "model": "gpt-3.5-turbo",
  "messages": ${messages}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ChatGpt',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic answer(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
  static dynamic totalTokens(dynamic response) => getJsonField(
        response,
        r'''$.usage.total_tokens''',
      );
  static dynamic ts(dynamic response) => getJsonField(
        response,
        r'''$.created''',
      );
}

class ImageGeneratorCall {
  static Future<ApiCallResponse> call({
    String? text = '',
    int? number,
    String? size = '',
  }) {
    final body = '''
{
  "prompt": "${text}",
  "n": ${number},
  "size": "${size}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ImageGenerator',
      apiUrl: 'https://api.openai.com/v1/images/generations',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic imageURL(dynamic response) => getJsonField(
        response,
        r'''$.data[:].url''',
        true,
      );
  static dynamic imageData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class SendEmailVerCall {
  static Future<ApiCallResponse> call({
    String? fullname = '',
    int? code,
    String? email = '',
  }) {
    final body = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "${email}"
        }
      ],
      "dynamic_template_data": {
        "first_name": "${fullname}",
        "line": "${code}"
      }
    }
  ],
  "from": {
    "email": ""
  },
  "template_id": "
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendEmailVer',
      apiUrl: '',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            '',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
