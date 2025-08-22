//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MeasuresApi {
  MeasuresApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get QRS Product
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] measure (required):
  ///   QRS Measure Identifier
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrQrsMeasureVersionGetWithHttpInfo(String measure, String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/qrs/{measure}/{version}'
      .replaceAll('{measure}', measure)
      .replaceAll('{version}', version);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get QRS Product
  ///
  /// Parameters:
  ///
  /// * [String] measure (required):
  ///   QRS Measure Identifier
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<QrsProduct?> mdrQrsMeasureVersionGet(String measure, String version,) async {
    final response = await mdrQrsMeasureVersionGetWithHttpInfo(measure, version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QrsProduct',) as QrsProduct;
    
    }
    return null;
  }

  /// Get QRS Item List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] measure (required):
  ///   QRS Measure Identifier
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrQrsMeasureVersionItemsGetWithHttpInfo(String measure, String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/qrs/{measure}/{version}/items'
      .replaceAll('{measure}', measure)
      .replaceAll('{version}', version);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get QRS Item List
  ///
  /// Parameters:
  ///
  /// * [String] measure (required):
  ///   QRS Measure Identifier
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<QrsItems?> mdrQrsMeasureVersionItemsGet(String measure, String version,) async {
    final response = await mdrQrsMeasureVersionItemsGetWithHttpInfo(measure, version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QrsItems',) as QrsItems;
    
    }
    return null;
  }

  /// Get QRS Item
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] measure (required):
  ///   QRS Measure Identifier
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] item (required):
  ///   QRS Measure Item Identifier
  Future<Response> mdrQrsMeasureVersionItemsItemGetWithHttpInfo(String measure, String version, String item,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/qrs/{measure}/{version}/items/{item}'
      .replaceAll('{measure}', measure)
      .replaceAll('{version}', version)
      .replaceAll('{item}', item);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get QRS Item
  ///
  /// Parameters:
  ///
  /// * [String] measure (required):
  ///   QRS Measure Identifier
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] item (required):
  ///   QRS Measure Item Identifier
  Future<QrsItem?> mdrQrsMeasureVersionItemsItemGet(String measure, String version, String item,) async {
    final response = await mdrQrsMeasureVersionItemsItemGetWithHttpInfo(measure, version, item,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QrsItem',) as QrsItem;
    
    }
    return null;
  }

  /// Get QRS Response Group List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] measure (required):
  ///   QRS Measure Identifier
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrQrsMeasureVersionResponsegroupsGetWithHttpInfo(String measure, String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/qrs/{measure}/{version}/responsegroups'
      .replaceAll('{measure}', measure)
      .replaceAll('{version}', version);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get QRS Response Group List
  ///
  /// Parameters:
  ///
  /// * [String] measure (required):
  ///   QRS Measure Identifier
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<QrsResponsegroups?> mdrQrsMeasureVersionResponsegroupsGet(String measure, String version,) async {
    final response = await mdrQrsMeasureVersionResponsegroupsGetWithHttpInfo(measure, version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QrsResponsegroups',) as QrsResponsegroups;
    
    }
    return null;
  }

  /// Get QRS Response Group
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] measure (required):
  ///   QRS Measure Identifier
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] responsegroup (required):
  ///   QRS Measure's Response Group Identifier
  Future<Response> mdrQrsMeasureVersionResponsegroupsResponsegroupGetWithHttpInfo(String measure, String version, String responsegroup,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/qrs/{measure}/{version}/responsegroups/{responsegroup}'
      .replaceAll('{measure}', measure)
      .replaceAll('{version}', version)
      .replaceAll('{responsegroup}', responsegroup);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get QRS Response Group
  ///
  /// Parameters:
  ///
  /// * [String] measure (required):
  ///   QRS Measure Identifier
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] responsegroup (required):
  ///   QRS Measure's Response Group Identifier
  Future<QrsResponsegroup?> mdrQrsMeasureVersionResponsegroupsResponsegroupGet(String measure, String version, String responsegroup,) async {
    final response = await mdrQrsMeasureVersionResponsegroupsResponsegroupGetWithHttpInfo(measure, version, responsegroup,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QrsResponsegroup',) as QrsResponsegroup;
    
    }
    return null;
  }
}
