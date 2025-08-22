//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/default_error_response.dart';
import 'package:openapi/src/model/default_search_response.dart';
import 'package:openapi/src/model/default_search_scopes.dart';
import 'package:openapi/src/model/mdr_search_scopes_get200_response.dart';
import 'package:openapi/src/model/scope_values.dart';

class SearchesApi {

  final Dio _dio;

  final Serializers _serializers;

  const SearchesApi(this._dio, this._serializers);

  /// mdrSearchGet
  /// Get Search Results Across CDISC Library
  ///
  /// Parameters:
  /// * [q] - Search Term Expression
  /// * [highlight] - Search Highlight Expression
  /// * [start] - Initial Search Result Index
  /// * [pageSize] - Number of Search Results to Return
  /// * [class_] - Limit Search by Setting Scope to Class
  /// * [codelist] - Limit Search by Setting Scope to Codelist
  /// * [conceptId] - Limit Search by Setting Scope to Concept ID
  /// * [core] - Limit Search by Setting Scope to Core
  /// * [dataStructure] - Limit Search by Setting Scope to Data Structure
  /// * [datasetStructure] - Limit Search by Setting Scope to Dataset Structure
  /// * [definition] - Limit Search by Setting Scope to Definition
  /// * [description] - Limit Search by Setting Scope to Description
  /// * [domain] - Limit Search by Setting Scope to Domain
  /// * [effectiveDate] - Limit Search by Setting Scope to Effective Date
  /// * [extensible] - Limit Search by Setting Scope to Extensible
  /// * [href] - Limit Search by Setting Scope to Href
  /// * [label] - Limit Search by Setting Scope to Label
  /// * [measureType] - SLimit Search by Setting Scope to Measure Type
  /// * [name] - Limit Search by Setting Scope to Name
  /// * [preferredTerm] - Limit Search by Setting Scope to Preferred Term
  /// * [product] - Limit Search by Setting Scope to Product
  /// * [productGroup] - Limit Search by Setting Scope to Product Group
  /// * [registrationStatus] - Limit Search by Setting Scope to Registration Status
  /// * [roleDescription] - Limit Search by Setting Scope to Role Description
  /// * [sdtmTarget] - Limit Search by Setting Scope to SDTM Target
  /// * [simpleDatatype] - Limit Search by Setting Scope to Simple Datatype
  /// * [submissionValue] - Limit Search by Setting Scope to Submission Value
  /// * [synonyms] - Limit Search by Setting Scope to Synonyms
  /// * [type] - Limit Search by Setting Scope to Type
  /// * [uiHref] - Limit Search by Setting Scope to UI Href
  /// * [valueDomain] - Limit Search by Setting Scope to Value Domain
  /// * [variableSet] - Limit Search by Setting Scope to Variable Set
  /// * [version] - Limit Search by Setting Scope to Version
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DefaultSearchResponse] as data
  /// Throws [DioException] if API call or serialization fails
  /// Release Notes about Searches
  /// Also see [ Documentation](https://wiki.cdisc.org/display/LIBSUPRT/Search)
  Future<Response<DefaultSearchResponse>> mdrSearchGet({ 
    required String q,
    String? highlight,
    num? start = 0,
    num? pageSize = 100,
    String? class_,
    String? codelist,
    String? conceptId,
    String? core,
    String? dataStructure,
    String? datasetStructure,
    String? definition,
    String? description,
    String? domain,
    String? effectiveDate,
    String? extensible,
    String? href,
    String? label,
    String? measureType,
    String? name,
    String? preferredTerm,
    String? product,
    String? productGroup,
    String? registrationStatus,
    String? roleDescription,
    String? sdtmTarget,
    String? simpleDatatype,
    String? submissionValue,
    String? synonyms,
    String? type,
    String? uiHref,
    String? valueDomain,
    String? variableSet,
    String? version,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/search';
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

    final _queryParameters = <String, dynamic>{
      r'q': encodeQueryParameter(_serializers, q, const FullType(String)),
      if (highlight != null) r'highlight': encodeQueryParameter(_serializers, highlight, const FullType(String)),
      if (start != null) r'start': encodeQueryParameter(_serializers, start, const FullType(num)),
      if (pageSize != null) r'pageSize': encodeQueryParameter(_serializers, pageSize, const FullType(num)),
      if (class_ != null) r'class': encodeQueryParameter(_serializers, class_, const FullType(String)),
      if (codelist != null) r'codelist': encodeQueryParameter(_serializers, codelist, const FullType(String)),
      if (conceptId != null) r'conceptId': encodeQueryParameter(_serializers, conceptId, const FullType(String)),
      if (core != null) r'core': encodeQueryParameter(_serializers, core, const FullType(String)),
      if (dataStructure != null) r'dataStructure': encodeQueryParameter(_serializers, dataStructure, const FullType(String)),
      if (datasetStructure != null) r'datasetStructure': encodeQueryParameter(_serializers, datasetStructure, const FullType(String)),
      if (definition != null) r'definition': encodeQueryParameter(_serializers, definition, const FullType(String)),
      if (description != null) r'description': encodeQueryParameter(_serializers, description, const FullType(String)),
      if (domain != null) r'domain': encodeQueryParameter(_serializers, domain, const FullType(String)),
      if (effectiveDate != null) r'effectiveDate': encodeQueryParameter(_serializers, effectiveDate, const FullType(String)),
      if (extensible != null) r'extensible': encodeQueryParameter(_serializers, extensible, const FullType(String)),
      if (href != null) r'href': encodeQueryParameter(_serializers, href, const FullType(String)),
      if (label != null) r'label': encodeQueryParameter(_serializers, label, const FullType(String)),
      if (measureType != null) r'measureType': encodeQueryParameter(_serializers, measureType, const FullType(String)),
      if (name != null) r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
      if (preferredTerm != null) r'preferredTerm': encodeQueryParameter(_serializers, preferredTerm, const FullType(String)),
      if (product != null) r'product': encodeQueryParameter(_serializers, product, const FullType(String)),
      if (productGroup != null) r'productGroup': encodeQueryParameter(_serializers, productGroup, const FullType(String)),
      if (registrationStatus != null) r'registrationStatus': encodeQueryParameter(_serializers, registrationStatus, const FullType(String)),
      if (roleDescription != null) r'roleDescription': encodeQueryParameter(_serializers, roleDescription, const FullType(String)),
      if (sdtmTarget != null) r'sdtmTarget': encodeQueryParameter(_serializers, sdtmTarget, const FullType(String)),
      if (simpleDatatype != null) r'simpleDatatype': encodeQueryParameter(_serializers, simpleDatatype, const FullType(String)),
      if (submissionValue != null) r'submissionValue': encodeQueryParameter(_serializers, submissionValue, const FullType(String)),
      if (synonyms != null) r'synonyms': encodeQueryParameter(_serializers, synonyms, const FullType(String)),
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
      if (uiHref != null) r'uiHref': encodeQueryParameter(_serializers, uiHref, const FullType(String)),
      if (valueDomain != null) r'valueDomain': encodeQueryParameter(_serializers, valueDomain, const FullType(String)),
      if (variableSet != null) r'variableSet': encodeQueryParameter(_serializers, variableSet, const FullType(String)),
      if (version != null) r'version': encodeQueryParameter(_serializers, version, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    DefaultSearchResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(DefaultSearchResponse),
      ) as DefaultSearchResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<DefaultSearchResponse>(
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

  /// mdrSearchScopesGet
  /// Get Search Results Across CDISC Library
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MdrSearchScopesGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  /// Release Notes about Searches
  /// Also see [ Documentation](https://wiki.cdisc.org/display/LIBSUPRT/Search)
  Future<Response<MdrSearchScopesGet200Response>> mdrSearchScopesGet({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/search/scopes';
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

    MdrSearchScopesGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(MdrSearchScopesGet200Response),
      ) as MdrSearchScopesGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MdrSearchScopesGet200Response>(
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

  /// mdrSearchScopesScopeGet
  /// Get Search Results Limited to Scope
  ///
  /// Parameters:
  /// * [scope] - Search Scope
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ScopeValues] as data
  /// Throws [DioException] if API call or serialization fails
  /// Release Notes about Searches
  /// Also see [ Documentation](https://wiki.cdisc.org/display/LIBSUPRT/Search)
  Future<Response<ScopeValues>> mdrSearchScopesScopeGet({ 
    required DefaultSearchScopes scope,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mdr/search/scopes/{scope}'.replaceAll('{' r'scope' '}', encodeQueryParameter(_serializers, scope, const FullType(DefaultSearchScopes)).toString());
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

    ScopeValues? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ScopeValues),
      ) as ScopeValues;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ScopeValues>(
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
