//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Information About CDISC Library
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> mdrAboutGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/about';

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

  /// Get Information About CDISC Library
  Future<About?> mdrAboutGet() async {
    final response = await mdrAboutGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'About',) as About;
    
    }
    return null;
  }

  /// Get CDISC Library Last Updated
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> mdrLastupdatedGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/lastupdated';

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

  /// Get CDISC Library Last Updated
  Future<Lastupdated?> mdrLastupdatedGet() async {
    final response = await mdrLastupdatedGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Lastupdated',) as Lastupdated;
    
    }
    return null;
  }

  /// Get CDISC Library Product Group Data Analysis
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> mdrProductsDataAnalysisGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/products/DataAnalysis';

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

  /// Get CDISC Library Product Group Data Analysis
  Future<ProductgroupDataAnalysis?> mdrProductsDataAnalysisGet() async {
    final response = await mdrProductsDataAnalysisGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductgroupDataAnalysis',) as ProductgroupDataAnalysis;
    
    }
    return null;
  }

  /// Get CDISC Library Product Group Data Collection
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> mdrProductsDataCollectionGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/products/DataCollection';

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

  /// Get CDISC Library Product Group Data Collection
  Future<ProductgroupDataCollection?> mdrProductsDataCollectionGet() async {
    final response = await mdrProductsDataCollectionGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductgroupDataCollection',) as ProductgroupDataCollection;
    
    }
    return null;
  }

  /// Get CDISC Library Product Group Data Tabulation
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> mdrProductsDataTabulationGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/products/DataTabulation';

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

  /// Get CDISC Library Product Group Data Tabulation
  Future<ProductgroupDataTabulation?> mdrProductsDataTabulationGet() async {
    final response = await mdrProductsDataTabulationGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductgroupDataTabulation',) as ProductgroupDataTabulation;
    
    }
    return null;
  }

  /// Get CDISC Library Products
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> mdrProductsGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/products';

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

  /// Get CDISC Library Products
  Future<Products?> mdrProductsGet() async {
    final response = await mdrProductsGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Products',) as Products;
    
    }
    return null;
  }

  /// Get CDISC Library Product Group QRS
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> mdrProductsMeasuresGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/products/Measures';

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

  /// Get CDISC Library Product Group QRS
  Future<ProductgroupQrs?> mdrProductsMeasuresGet() async {
    final response = await mdrProductsMeasuresGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductgroupQrs',) as ProductgroupQrs;
    
    }
    return null;
  }

  /// Get CDISC Library Product Group Terminology
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> mdrProductsTerminologyGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/products/Terminology';

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

  /// Get CDISC Library Product Group Terminology
  Future<ProductgroupTerminology?> mdrProductsTerminologyGet() async {
    final response = await mdrProductsTerminologyGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductgroupTerminology',) as ProductgroupTerminology;
    
    }
    return null;
  }
}
