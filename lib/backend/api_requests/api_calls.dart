import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FindAllPendingServiceRequestCall {
  static Future<ApiCallResponse> call({
    String? tenantId = '12345',
    String? requestStatus = 'pending',
    bool? statusBoolean = true,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'findAllPendingServiceRequest',
      apiUrl:
          'https://tyk-apim.cgaas.ai/gateway/ServiceManagement-app1174/FindallifServiceRequestByTenantId/RequestStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'TenantId': tenantId,
        'RequestStatus': requestStatus,
        'StatusBoolean': statusBoolean,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].RequestDescription''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? requestType(dynamic response) => getJsonField(
        response,
        r'''$[:].MaintenanceRequestId''',
        true,
      ) as List?;
}

class FindAllOngoingServiceRequestsCall {
  static Future<ApiCallResponse> call({
    String? tenantId = '12345',
    String? requestStatus = 'inprogress',
    bool? statusBoolean = true,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'findAllOngoingServiceRequests',
      apiUrl:
          'https://tyk-apim.cgaas.ai/gateway/ServiceManagement-app1174/FindallifServiceRequestByTenantId/RequestStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'TenantId': tenantId,
        'RequestStatus': requestStatus,
        'StatusBoolean': statusBoolean,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? maintenanceType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].MaintenanceRequestId.MaintenanceType''',
      ));
  static String? description(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].MaintenanceRequestId.Notes''',
      ));
}

class FindAllCompletedServiceRequestsCall {
  static Future<ApiCallResponse> call({
    String? tenantId = '12345',
    String? requestStatus = 'completed',
    bool? statusBoolean = true,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'findAllCompletedServiceRequests',
      apiUrl:
          'https://tyk-apim.cgaas.ai/gateway/ServiceManagement-app1174/FindallifServiceRequestByTenantId/RequestStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'TenantId': tenantId,
        'RequestStatus': requestStatus,
        'StatusBoolean': statusBoolean,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? maintenanceType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].MaintenanceRequestId.MaintenanceType''',
      ));
  static String? description(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].MaintenanceRequestId.Notes''',
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
