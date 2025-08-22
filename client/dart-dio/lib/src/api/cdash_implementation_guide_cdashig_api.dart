//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/cdashig_class.dart';
import 'package:openapi/src/model/cdashig_class_domains.dart';
import 'package:openapi/src/model/cdashig_class_scenarios.dart';
import 'package:openapi/src/model/cdashig_domain.dart';
import 'package:openapi/src/model/cdashig_domain_field.dart';
import 'package:openapi/src/model/cdashig_domain_fields.dart';
import 'package:openapi/src/model/cdashig_product.dart';
import 'package:openapi/src/model/cdashig_product_classes.dart';
import 'package:openapi/src/model/cdashig_product_domains.dart';
import 'package:openapi/src/model/cdashig_product_scenarios.dart';
import 'package:openapi/src/model/cdashig_scenario.dart';
import 'package:openapi/src/model/cdashig_scenario_field.dart';
import 'package:openapi/src/model/cdashig_scenario_fields.dart';
import 'package:openapi/src/model/default_error_response.dart';
import 'package:openapi/src/model/export_cdashig_table.dart';
import 'package:openapi/src/model/root_cdashig_domain_field.dart';
import 'package:openapi/src/model/root_cdashig_scenario_field.dart';
import 'package:openapi/src/model/xml_cdashig_class.dart';
import 'package:openapi/src/model/xml_cdashig_class_domains.dart';
import 'package:openapi/src/model/xml_cdashig_class_scenarios.dart';
import 'package:openapi/src/model/xml_cdashig_domain.dart';
import 'package:openapi/src/model/xml_cdashig_domain_field.dart';
import 'package:openapi/src/model/xml_cdashig_domain_fields.dart';
import 'package:openapi/src/model/xml_cdashig_product.dart';
import 'package:openapi/src/model/xml_cdashig_product_classes.dart';
import 'package:openapi/src/model/xml_cdashig_product_domains.dart';
import 'package:openapi/src/model/xml_cdashig_product_scenarios.dart';
import 'package:openapi/src/model/xml_cdashig_scenario.dart';
import 'package:openapi/src/model/xml_cdashig_scenario_field.dart';
import 'package:openapi/src/model/xml_cdashig_scenario_fields.dart';
import 'package:openapi/src/model/xml_root_cdashig_domain_field.dart';
import 'package:openapi/src/model/xml_root_cdashig_scenario_field.dart';

class CDASHImplementationGuideCDASHIGApi {

  final Dio _dio;

  final Serializers _serializers;

  const CDASHImplementationGuideCDASHIGApi(this._dio, this._serializers);

  /// mdrCdashigVersionClassesClassDomainsGet
  /// Get CDASHIG Class Domain List
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [class_] - CDASHIG Class Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigClassDomains] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigClassDomains>> mdrCdashigVersionClassesClassDomainsGet({ 
    required String version,
    required String class_,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}/classes/{class}/domains'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'class' '}', encodeQueryParameter(_serializers, class_, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigClassDomains? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigClassDomains),
      ) as CdashigClassDomains;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigClassDomains>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrCdashigVersionClassesClassGet
  /// Get CDASHIG Class
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [class_] - CDASHIG Class Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigClass] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigClass>> mdrCdashigVersionClassesClassGet({ 
    required String version,
    required String class_,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}/classes/{class}'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'class' '}', encodeQueryParameter(_serializers, class_, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigClass? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigClass),
      ) as CdashigClass;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigClass>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrCdashigVersionClassesClassScenariosGet
  /// Get CDASHIG Class Scenario List
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [class_] - CDASHIG Class Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigClassScenarios] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigClassScenarios>> mdrCdashigVersionClassesClassScenariosGet({ 
    required String version,
    required String class_,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}/classes/{class}/scenarios'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'class' '}', encodeQueryParameter(_serializers, class_, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigClassScenarios? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigClassScenarios),
      ) as CdashigClassScenarios;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigClassScenarios>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrCdashigVersionClassesGet
  /// Get CDASHIG Class List
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigProductClasses] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigProductClasses>> mdrCdashigVersionClassesGet({ 
    required String version,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}/classes'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigProductClasses? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigProductClasses),
      ) as CdashigProductClasses;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigProductClasses>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrCdashigVersionDomainsDomainFieldsFieldGet
  /// Get CDASHIG Domain Field
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [domain] - CDASHIG Domain Identifier
  /// * [field] - CDASHIG Field Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigDomainField] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigDomainField>> mdrCdashigVersionDomainsDomainFieldsFieldGet({ 
    required String version,
    required String domain,
    required String field,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}/domains/{domain}/fields/{field}'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'domain' '}', encodeQueryParameter(_serializers, domain, const FullType(String)).toString()).replaceAll('{' r'field' '}', encodeQueryParameter(_serializers, field, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigDomainField? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigDomainField),
      ) as CdashigDomainField;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigDomainField>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrCdashigVersionDomainsDomainFieldsGet
  /// Get CDASHIG Domain Field List
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [domain] - CDASHIG Domain Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigDomainFields] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigDomainFields>> mdrCdashigVersionDomainsDomainFieldsGet({ 
    required String version,
    required String domain,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}/domains/{domain}/fields'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'domain' '}', encodeQueryParameter(_serializers, domain, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigDomainFields? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigDomainFields),
      ) as CdashigDomainFields;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigDomainFields>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrCdashigVersionDomainsDomainGet
  /// Get CDASHIG Domain
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [domain] - CDASHIG Domain Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigDomain] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigDomain>> mdrCdashigVersionDomainsDomainGet({ 
    required String version,
    required String domain,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}/domains/{domain}'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'domain' '}', encodeQueryParameter(_serializers, domain, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigDomain? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigDomain),
      ) as CdashigDomain;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigDomain>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrCdashigVersionDomainsGet
  /// Get CDASHIG Domain List
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigProductDomains] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigProductDomains>> mdrCdashigVersionDomainsGet({ 
    required String version,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}/domains'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigProductDomains? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigProductDomains),
      ) as CdashigProductDomains;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigProductDomains>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrCdashigVersionGet
  /// Get CDASHIG Product
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigProduct] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigProduct>> mdrCdashigVersionGet({ 
    required String version,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigProduct? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigProduct),
      ) as CdashigProduct;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigProduct>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet
  /// Get CDASHIG Scenario Field
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [domain] - CDASHIG Domain Identifier
  /// * [scenario] - CDASHIG Scenario Identifier
  /// * [field] - CDASHIG Field Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigScenarioField] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigScenarioField>> mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet({ 
    required String version,
    required String domain,
    required String scenario,
    required String field,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field}'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'domain' '}', encodeQueryParameter(_serializers, domain, const FullType(String)).toString()).replaceAll('{' r'scenario' '}', encodeQueryParameter(_serializers, scenario, const FullType(String)).toString()).replaceAll('{' r'field' '}', encodeQueryParameter(_serializers, field, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigScenarioField? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigScenarioField),
      ) as CdashigScenarioField;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigScenarioField>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrCdashigVersionScenariosDomainScenarioFieldsGet
  /// Get CDASHIG Scenario Field List
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [domain] - CDASHIG Domain Identifier
  /// * [scenario] - CDASHIG Scenario Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigScenarioFields] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigScenarioFields>> mdrCdashigVersionScenariosDomainScenarioFieldsGet({ 
    required String version,
    required String domain,
    required String scenario,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'domain' '}', encodeQueryParameter(_serializers, domain, const FullType(String)).toString()).replaceAll('{' r'scenario' '}', encodeQueryParameter(_serializers, scenario, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigScenarioFields? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigScenarioFields),
      ) as CdashigScenarioFields;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigScenarioFields>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrCdashigVersionScenariosDomainScenarioGet
  /// Get CDASHIG Scenario
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [domain] - CDASHIG Domain Identifier
  /// * [scenario] - CDASHIG Scenario Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigScenario] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigScenario>> mdrCdashigVersionScenariosDomainScenarioGet({ 
    required String version,
    required String domain,
    required String scenario,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}/scenarios/{domain}.{scenario}'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'domain' '}', encodeQueryParameter(_serializers, domain, const FullType(String)).toString()).replaceAll('{' r'scenario' '}', encodeQueryParameter(_serializers, scenario, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigScenario? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigScenario),
      ) as CdashigScenario;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigScenario>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrCdashigVersionScenariosGet
  /// Get CDASHIG Scenario List
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CdashigProductScenarios] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CdashigProductScenarios>> mdrCdashigVersionScenariosGet({ 
    required String version,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/cdashig/{version}/scenarios'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CdashigProductScenarios? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CdashigProductScenarios),
      ) as CdashigProductScenarios;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CdashigProductScenarios>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrRootCdashigDomainsDomainFieldsFieldGet
  /// Get Root CDASHIG Domain Field
  ///
  /// Parameters:
  /// * [domain] - CDASHIG Domain Identifier
  /// * [field] - CDASHIG Field Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [RootCdashigDomainField] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<RootCdashigDomainField>> mdrRootCdashigDomainsDomainFieldsFieldGet({ 
    required String domain,
    required String field,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/root/cdashig/domains/{domain}/fields/{field}'.replaceAll('{' r'domain' '}', encodeQueryParameter(_serializers, domain, const FullType(String)).toString()).replaceAll('{' r'field' '}', encodeQueryParameter(_serializers, field, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    RootCdashigDomainField? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(RootCdashigDomainField),
      ) as RootCdashigDomainField;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<RootCdashigDomainField>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// mdrRootCdashigScenariosDomainScenarioFieldsFieldGet
  /// Get Root CDASHIG Scenario Field
  ///
  /// Parameters:
  /// * [domain] - CDASHIG Domain Identifier
  /// * [scenario] - CDASHIG Scenario Identifier
  /// * [field] - CDASHIG Field Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [RootCdashigScenarioField] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<RootCdashigScenarioField>> mdrRootCdashigScenariosDomainScenarioFieldsFieldGet({ 
    required String domain,
    required String scenario,
    required String field,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field}'.replaceAll('{' r'domain' '}', encodeQueryParameter(_serializers, domain, const FullType(String)).toString()).replaceAll('{' r'scenario' '}', encodeQueryParameter(_serializers, scenario, const FullType(String)).toString()).replaceAll('{' r'field' '}', encodeQueryParameter(_serializers, field, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'basic',
            'name': 'basicAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    RootCdashigScenarioField? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(RootCdashigScenarioField),
      ) as RootCdashigScenarioField;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<RootCdashigScenarioField>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
