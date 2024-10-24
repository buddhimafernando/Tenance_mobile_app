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

class FindTenantDetailsCall {
  static Future<ApiCallResponse> call({
    String? tenantId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'findTenantDetails',
      apiUrl:
          'https://tyk-apim.cgaas.ai/gateway/tenantmanagement-app1175/find/tenant',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'tenantId': tenantId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? agreementId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.AgreementId''',
      ));
}

class CreateMaintainenanceRequestCall {
  static Future<ApiCallResponse> call({
    String? maintenanceRequestId = '',
    String? maintenanceType = '',
    String? description = '',
    String? availableTime = '',
    String? images = '',
    String? tenantId = '',
    String? propertyId = '',
    bool? deleted,
  }) async {
    final ffApiRequestBody = '''
{
  "MaintenanceRequestId": "$maintenanceRequestId",
  "MaintenanceType": "$maintenanceType",
  "Notes": "$description",
  "AvailableTime": "$availableTime",
  "Images": [
    "$images"
  ],
  "TenantId": "$tenantId",
  "PropertyId": "$propertyId",
  "Deleted": $deleted
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createMaintainenanceRequest',
      apiUrl:
          'https://tyk-apim.cgaas.ai/gateway/maintenancemanagement-app1172/create/maintenancerequest',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateInquiryCall {
  static Future<ApiCallResponse> call({
    String? inquiryId = '',
    String? name = '',
    String? email = '',
    String? phonenumber = '',
    String? message = '',
    String? tenantId = '',
    String? propertyId = '',
    bool? deleted,
    String? subject = '',
  }) async {
    final ffApiRequestBody = '''
{
  "InquiryId": "$inquiryId",
  "FullName": "$name",
  "Email": "$email",
  "PhoneNumber": "$phonenumber",
  "Message": "$message",
  "TenantId": "$tenantId",
  "PropertyId": "$propertyId",
  "Deleted": $deleted,
  "Subject": "$subject"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createInquiry',
      apiUrl:
          'https://tyk-apim.cgaas.ai/gateway/tenantmanagement-app1175/create/inquiry',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteServiceRequestCall {
  static Future<ApiCallResponse> call({
    String? serviceRequestId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteServiceRequest',
      apiUrl:
          'https://tyk-apim.cgaas.ai/gateway/servicemanagement-app1174/delete/servicerequest',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'serviceRequestId': serviceRequestId,
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

class UpdateServiceRequestStatusCall {
  static Future<ApiCallResponse> call({
    String? serviceRequestId = '',
    String? status = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'updateServiceRequestStatus',
      apiUrl:
          'https://servicemanagement-app1174.demo.cgaas.ai/ServiceManagement/api/PatchRequestHistoryByStatus',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {
        'ServiceRequestId': serviceRequestId,
        'Status': status,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FindServiceProviderDetailsCall {
  static Future<ApiCallResponse> call({
    String? serviceProviderId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'findServiceProviderDetails',
      apiUrl:
          'https://servicemanagement-app1174.demo.cgaas.ai/ServiceManagement/api/FindServiceProvider',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'serviceProviderId': serviceProviderId,
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
