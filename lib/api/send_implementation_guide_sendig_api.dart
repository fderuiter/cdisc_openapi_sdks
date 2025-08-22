//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SENDImplementationGuideSENDIGApi {
  SENDImplementationGuideSENDIGApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Root SENDIG Dataset Variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataset (required):
  ///   SENDIG Dataset Identifier
  ///
  /// * [String] var_ (required):
  ///   SENDIG Variable Identifier
  Future<Response> mdrRootSendigDatasetsDatasetVariablesVarGetWithHttpInfo(String dataset, String var_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/root/sendig/datasets/{dataset}/variables/{var}'
      .replaceAll('{dataset}', dataset)
      .replaceAll('{var}', var_);

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

  /// Get Root SENDIG Dataset Variable
  ///
  /// Parameters:
  ///
  /// * [String] dataset (required):
  ///   SENDIG Dataset Identifier
  ///
  /// * [String] var_ (required):
  ///   SENDIG Variable Identifier
  Future<RootSendigDatasetVariable?> mdrRootSendigDatasetsDatasetVariablesVarGet(String dataset, String var_,) async {
    final response = await mdrRootSendigDatasetsDatasetVariablesVarGetWithHttpInfo(dataset, var_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RootSendigDatasetVariable',) as RootSendigDatasetVariable;
    
    }
    return null;
  }

  /// Get SENDIG Class Dataset List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SENDIG Class Identifier
  Future<Response> mdrSendigVersionClassesClassDatasetsGetWithHttpInfo(String version, String class_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sendig/{version}/classes/{class}/datasets'
      .replaceAll('{version}', version)
      .replaceAll('{class}', class_);

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

  /// Get SENDIG Class Dataset List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SENDIG Class Identifier
  Future<SendigClassDatasets?> mdrSendigVersionClassesClassDatasetsGet(String version, String class_,) async {
    final response = await mdrSendigVersionClassesClassDatasetsGetWithHttpInfo(version, class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendigClassDatasets',) as SendigClassDatasets;
    
    }
    return null;
  }

  /// Get SENDIG Class
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SENDIG Class Identifier
  Future<Response> mdrSendigVersionClassesClassGetWithHttpInfo(String version, String class_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sendig/{version}/classes/{class}'
      .replaceAll('{version}', version)
      .replaceAll('{class}', class_);

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

  /// Get SENDIG Class
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SENDIG Class Identifier
  Future<SendigClass?> mdrSendigVersionClassesClassGet(String version, String class_,) async {
    final response = await mdrSendigVersionClassesClassGetWithHttpInfo(version, class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendigClass',) as SendigClass;
    
    }
    return null;
  }

  /// Get SENDIG Class List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrSendigVersionClassesGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sendig/{version}/classes'
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

  /// Get SENDIG Class List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<SendigClasses?> mdrSendigVersionClassesGet(String version,) async {
    final response = await mdrSendigVersionClassesGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendigClasses',) as SendigClasses;
    
    }
    return null;
  }

  /// Get SENDIG Dataset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SENDIG Class Identifier
  Future<Response> mdrSendigVersionDatasetsDatasetGetWithHttpInfo(String version, String dataset,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sendig/{version}/datasets/{dataset}'
      .replaceAll('{version}', version)
      .replaceAll('{dataset}', dataset);

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

  /// Get SENDIG Dataset
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SENDIG Class Identifier
  Future<SendigDataset?> mdrSendigVersionDatasetsDatasetGet(String version, String dataset,) async {
    final response = await mdrSendigVersionDatasetsDatasetGetWithHttpInfo(version, dataset,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendigDataset',) as SendigDataset;
    
    }
    return null;
  }

  /// Get SENDIG Dataset Variable List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SENDIG Class Identifier
  Future<Response> mdrSendigVersionDatasetsDatasetVariablesGetWithHttpInfo(String version, String dataset,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sendig/{version}/datasets/{dataset}/variables'
      .replaceAll('{version}', version)
      .replaceAll('{dataset}', dataset);

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

  /// Get SENDIG Dataset Variable List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SENDIG Class Identifier
  Future<SendigDatasetVariables?> mdrSendigVersionDatasetsDatasetVariablesGet(String version, String dataset,) async {
    final response = await mdrSendigVersionDatasetsDatasetVariablesGetWithHttpInfo(version, dataset,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendigDatasetVariables',) as SendigDatasetVariables;
    
    }
    return null;
  }

  /// Get SENDIG Dataset Variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SENDIG Class Identifier
  ///
  /// * [String] var_ (required):
  ///   SENDIG Variable Identifier
  Future<Response> mdrSendigVersionDatasetsDatasetVariablesVarGetWithHttpInfo(String version, String dataset, String var_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sendig/{version}/datasets/{dataset}/variables/{var}'
      .replaceAll('{version}', version)
      .replaceAll('{dataset}', dataset)
      .replaceAll('{var}', var_);

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

  /// Get SENDIG Dataset Variable
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SENDIG Class Identifier
  ///
  /// * [String] var_ (required):
  ///   SENDIG Variable Identifier
  Future<SendigDatasetVariable?> mdrSendigVersionDatasetsDatasetVariablesVarGet(String version, String dataset, String var_,) async {
    final response = await mdrSendigVersionDatasetsDatasetVariablesVarGetWithHttpInfo(version, dataset, var_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendigDatasetVariable',) as SendigDatasetVariable;
    
    }
    return null;
  }

  /// Get SENDIG Dataset List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrSendigVersionDatasetsGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sendig/{version}/datasets'
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

  /// Get SENDIG Dataset List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<SendigDatasets?> mdrSendigVersionDatasetsGet(String version,) async {
    final response = await mdrSendigVersionDatasetsGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendigDatasets',) as SendigDatasets;
    
    }
    return null;
  }

  /// Get SENDIG product
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrSendigVersionGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sendig/{version}'
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

  /// Get SENDIG product
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<SendigProduct?> mdrSendigVersionGet(String version,) async {
    final response = await mdrSendigVersionGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendigProduct',) as SendigProduct;
    
    }
    return null;
  }
}
