import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start buyeruser Group Code

class BuyeruserGroup {
  static String getBaseUrl({
    int? buyerUserId,
    String? order = 'DESC',
    int? page = 1,
    int? limit = 10,
  }) =>
      'http://39.106.230.250:6688/api/buyer_user';
  static Map<String, String> headers = {};
  static BuyerOrderCall buyerOrderCall = BuyerOrderCall();
  static ReleaseCall releaseCall = ReleaseCall();
}

class BuyerOrderCall {
  Future<ApiCallResponse> call({
    int? buyerUserId,
    String? order = 'DESC',
    int? page = 1,
    int? limit = 10,
  }) async {
    final baseUrl = BuyeruserGroup.getBaseUrl(
      buyerUserId: buyerUserId,
      order: order,
      page: page,
      limit: limit,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'buyerOrder',
      apiUrl: '${baseUrl}/order/buyer_user_id/${buyerUserId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'order': order,
        'page': page,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? orderIds(dynamic response) => (getJsonField(
        response,
        r'''$[:].order_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? orderFormids(dynamic response) => (getJsonField(
        response,
        r'''$[:].order_formid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? buyerUserIds(dynamic response) => (getJsonField(
        response,
        r'''$[:].buyer_user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? buyerUserNames(dynamic response) => (getJsonField(
        response,
        r'''$[:].buyer_user_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? balances(dynamic response) => (getJsonField(
        response,
        r'''$[:].balance''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? totalIncomes(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_income''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? totalExpenses(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_expenses''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? prices(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? commissions(dynamic response) => (getJsonField(
        response,
        r'''$[:].commission''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? messages(dynamic response) => (getJsonField(
        response,
        r'''$[:].message''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? times(dynamic response) => (getJsonField(
        response,
        r'''$[:].transaction_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? states(dynamic response) => (getJsonField(
        response,
        r'''$[:].state''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? types(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ReleaseCall {
  Future<ApiCallResponse> call({
    int? buyerUserId,
    String? order = 'DESC',
    int? page = 1,
    int? limit = 10,
  }) async {
    final baseUrl = BuyeruserGroup.getBaseUrl(
      buyerUserId: buyerUserId,
      order: order,
      page: page,
      limit: limit,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'release',
      apiUrl: '${baseUrl}/daily_release/buyer_user_id/${buyerUserId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'order': order,
        'page': page,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End buyeruser Group Code

/// Start distributor Group Code

class DistributorGroup {
  static String getBaseUrl({
    int? distributorId,
    String? order = 'DESC',
    int? page = 1,
    int? limit = 10,
  }) =>
      'http://39.106.230.250:6688/api/distributor';
  static Map<String, String> headers = {};
  static DistributorOrderCall distributorOrderCall = DistributorOrderCall();
  static DailyreleaseCall dailyreleaseCall = DailyreleaseCall();
}

class DistributorOrderCall {
  Future<ApiCallResponse> call({
    int? distributorId,
    String? order = 'DESC',
    int? page = 1,
    int? limit = 10,
  }) async {
    final baseUrl = DistributorGroup.getBaseUrl(
      distributorId: distributorId,
      order: order,
      page: page,
      limit: limit,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'distributorOrder',
      apiUrl: '${baseUrl}/order/distributor/${distributorId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'order': order,
        'page': page,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DailyreleaseCall {
  Future<ApiCallResponse> call({
    int? distributorId,
    String? order = 'DESC',
    int? page = 1,
    int? limit = 10,
  }) async {
    final baseUrl = DistributorGroup.getBaseUrl(
      distributorId: distributorId,
      order: order,
      page: page,
      limit: limit,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'dailyrelease',
      apiUrl: '${baseUrl}/daily_release/${distributorId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'order': order,
        'page': page,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End distributor Group Code

/// Start userInfo Group Code

class UserInfoGroup {
  static String getBaseUrl({
    int? buyerUserId,
  }) =>
      'http://39.106.230.250:6688/api/user';
  static Map<String, String> headers = {};
  static IdCall idCall = IdCall();
}

class IdCall {
  Future<ApiCallResponse> call({
    int? buyerUserId,
  }) async {
    final baseUrl = UserInfoGroup.getBaseUrl(
      buyerUserId: buyerUserId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'id',
      apiUrl: '${baseUrl}/id/${buyerUserId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? headImage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.head_image''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? watchName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.wechat_name''',
      ));
}

/// End userInfo Group Code

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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
