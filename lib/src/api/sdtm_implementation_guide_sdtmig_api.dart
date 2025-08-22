//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/default_error_response.dart';
import 'package:openapi/src/model/export_sdtmig_datasets_table.dart';
import 'package:openapi/src/model/export_sdtmig_variables_table.dart';
import 'package:openapi/src/model/export_sdtmig_workbook.dart';
import 'package:openapi/src/model/root_sdtmig_dataset_variable.dart';
import 'package:openapi/src/model/sdtmig_class.dart';
import 'package:openapi/src/model/sdtmig_class_datasets.dart';
import 'package:openapi/src/model/sdtmig_classes.dart';
import 'package:openapi/src/model/sdtmig_dataset.dart';
import 'package:openapi/src/model/sdtmig_dataset_variable.dart';
import 'package:openapi/src/model/sdtmig_dataset_variables.dart';
import 'package:openapi/src/model/sdtmig_datasets.dart';
import 'package:openapi/src/model/sdtmig_product.dart';
import 'package:openapi/src/model/xml_root_sdtmig_dataset_variable.dart';
import 'package:openapi/src/model/xml_sdtmig_class.dart';
import 'package:openapi/src/model/xml_sdtmig_class_datasets.dart';
import 'package:openapi/src/model/xml_sdtmig_classes.dart';
import 'package:openapi/src/model/xml_sdtmig_dataset.dart';
import 'package:openapi/src/model/xml_sdtmig_dataset_variable.dart';
import 'package:openapi/src/model/xml_sdtmig_dataset_variables.dart';
import 'package:openapi/src/model/xml_sdtmig_datasets.dart';
import 'package:openapi/src/model/xml_sdtmig_product.dart';

class SDTMImplementationGuideSDTMIGApi {

  final Dio _dio;

  final Serializers _serializers;

  const SDTMImplementationGuideSDTMIGApi(this._dio, this._serializers);

  /// mdrRootSdtmigDatasetsDatasetVariablesVarGet
  /// Get Root SDTMIG Dataset Variable
  ///
  /// Parameters:
  /// * [dataset] - SDTMIG Dataset Identifier
  /// * [var_] - SDTMIG Variable Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [RootSdtmigDatasetVariable] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<RootSdtmigDatasetVariable>> mdrRootSdtmigDatasetsDatasetVariablesVarGet({ 
    required String dataset,
    required String var_,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/root/sdtmig/datasets/{dataset}/variables/{var}'.replaceAll('{' r'dataset' '}', encodeQueryParameter(_serializers, dataset, const FullType(String)).toString()).replaceAll('{' r'var' '}', encodeQueryParameter(_serializers, var_, const FullType(String)).toString());
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

    RootSdtmigDatasetVariable? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(RootSdtmigDatasetVariable),
      ) as RootSdtmigDatasetVariable;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<RootSdtmigDatasetVariable>(
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

  /// mdrSdtmigVersionClassesClassDatasetsGet
  /// Get SDTMIG Class Dataset List
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [class_] - SDTMIG Class Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SdtmigClassDatasets] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SdtmigClassDatasets>> mdrSdtmigVersionClassesClassDatasetsGet({ 
    required String version,
    required String class_,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/sdtmig/{version}/classes/{class}/datasets'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'class' '}', encodeQueryParameter(_serializers, class_, const FullType(String)).toString());
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

    SdtmigClassDatasets? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SdtmigClassDatasets),
      ) as SdtmigClassDatasets;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SdtmigClassDatasets>(
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

  /// mdrSdtmigVersionClassesClassGet
  /// Get SDTMIG Class
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [class_] - SDTMIG Class Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SdtmigClass] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SdtmigClass>> mdrSdtmigVersionClassesClassGet({ 
    required String version,
    required String class_,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/sdtmig/{version}/classes/{class}'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'class' '}', encodeQueryParameter(_serializers, class_, const FullType(String)).toString());
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

    SdtmigClass? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SdtmigClass),
      ) as SdtmigClass;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SdtmigClass>(
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

  /// mdrSdtmigVersionClassesGet
  /// Get SDTMIG Class List
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
  /// Returns a [Future] containing a [Response] with a [SdtmigClasses] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SdtmigClasses>> mdrSdtmigVersionClassesGet({ 
    required String version,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/sdtmig/{version}/classes'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString());
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

    SdtmigClasses? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SdtmigClasses),
      ) as SdtmigClasses;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SdtmigClasses>(
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

  /// mdrSdtmigVersionDatasetsDatasetGet
  /// Get SDTMIG Dataset
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [dataset] - SDTMIG Dataset Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SdtmigDataset] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SdtmigDataset>> mdrSdtmigVersionDatasetsDatasetGet({ 
    required String version,
    required String dataset,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/sdtmig/{version}/datasets/{dataset}'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'dataset' '}', encodeQueryParameter(_serializers, dataset, const FullType(String)).toString());
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

    SdtmigDataset? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SdtmigDataset),
      ) as SdtmigDataset;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SdtmigDataset>(
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

  /// mdrSdtmigVersionDatasetsDatasetVariablesGet
  /// Get SDTMIG Dataset Variable List
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [dataset] - SDTMIG Dataset Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SdtmigDatasetVariables] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SdtmigDatasetVariables>> mdrSdtmigVersionDatasetsDatasetVariablesGet({ 
    required String version,
    required String dataset,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/sdtmig/{version}/datasets/{dataset}/variables'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'dataset' '}', encodeQueryParameter(_serializers, dataset, const FullType(String)).toString());
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

    SdtmigDatasetVariables? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SdtmigDatasetVariables),
      ) as SdtmigDatasetVariables;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SdtmigDatasetVariables>(
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

  /// mdrSdtmigVersionDatasetsDatasetVariablesVarGet
  /// Get SDTMIG Dataset Variable
  ///
  /// Parameters:
  /// * [version] - CDISC Library Product Version
  /// * [dataset] - SDTMIG Dataset Identifier
  /// * [var_] - SDTMIG Variable Identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SdtmigDatasetVariable] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SdtmigDatasetVariable>> mdrSdtmigVersionDatasetsDatasetVariablesVarGet({ 
    required String version,
    required String dataset,
    required String var_,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/sdtmig/{version}/datasets/{dataset}/variables/{var}'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString()).replaceAll('{' r'dataset' '}', encodeQueryParameter(_serializers, dataset, const FullType(String)).toString()).replaceAll('{' r'var' '}', encodeQueryParameter(_serializers, var_, const FullType(String)).toString());
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

    SdtmigDatasetVariable? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SdtmigDatasetVariable),
      ) as SdtmigDatasetVariable;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SdtmigDatasetVariable>(
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

  /// mdrSdtmigVersionDatasetsGet
  /// Get SDTMIG Dataset List
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
  /// Returns a [Future] containing a [Response] with a [SdtmigDatasets] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SdtmigDatasets>> mdrSdtmigVersionDatasetsGet({ 
    required String version,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/sdtmig/{version}/datasets'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString());
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

    SdtmigDatasets? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SdtmigDatasets),
      ) as SdtmigDatasets;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SdtmigDatasets>(
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

  /// mdrSdtmigVersionGet
  /// Get SDTMIG product
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
  /// Returns a [Future] containing a [Response] with a [SdtmigProduct] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SdtmigProduct>> mdrSdtmigVersionGet({ 
    required String version,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/sdtmig/{version}'.replaceAll('{' r'version' '}', encodeQueryParameter(_serializers, version, const FullType(String)).toString());
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

    SdtmigProduct? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SdtmigProduct),
      ) as SdtmigProduct;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SdtmigProduct>(
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
