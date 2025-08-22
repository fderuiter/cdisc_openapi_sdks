//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SDTMImplementationGuideSDTMIGApi {
  SDTMImplementationGuideSDTMIGApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Root SDTMIG Dataset Variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataset (required):
  ///   SDTMIG Dataset Identifier
  ///
  /// * [String] var_ (required):
  ///   SDTMIG Variable Identifier
  Future<Response> mdrRootSdtmigDatasetsDatasetVariablesVarGetWithHttpInfo(String dataset, String var_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/root/sdtmig/datasets/{dataset}/variables/{var}'
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

  /// Get Root SDTMIG Dataset Variable
  ///
  /// Parameters:
  ///
  /// * [String] dataset (required):
  ///   SDTMIG Dataset Identifier
  ///
  /// * [String] var_ (required):
  ///   SDTMIG Variable Identifier
  Future<RootSdtmigDatasetVariable?> mdrRootSdtmigDatasetsDatasetVariablesVarGet(String dataset, String var_,) async {
    final response = await mdrRootSdtmigDatasetsDatasetVariablesVarGetWithHttpInfo(dataset, var_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RootSdtmigDatasetVariable',) as RootSdtmigDatasetVariable;
    
    }
    return null;
  }

  /// Get SDTMIG Class Dataset List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SDTMIG Class Identifier
  Future<Response> mdrSdtmigVersionClassesClassDatasetsGetWithHttpInfo(String version, String class_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtmig/{version}/classes/{class}/datasets'
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

  /// Get SDTMIG Class Dataset List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SDTMIG Class Identifier
  Future<SdtmigClassDatasets?> mdrSdtmigVersionClassesClassDatasetsGet(String version, String class_,) async {
    final response = await mdrSdtmigVersionClassesClassDatasetsGetWithHttpInfo(version, class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmigClassDatasets',) as SdtmigClassDatasets;
    
    }
    return null;
  }

  /// Get SDTMIG Class
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SDTMIG Class Identifier
  Future<Response> mdrSdtmigVersionClassesClassGetWithHttpInfo(String version, String class_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtmig/{version}/classes/{class}'
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

  /// Get SDTMIG Class
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SDTMIG Class Identifier
  Future<SdtmigClass?> mdrSdtmigVersionClassesClassGet(String version, String class_,) async {
    final response = await mdrSdtmigVersionClassesClassGetWithHttpInfo(version, class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmigClass',) as SdtmigClass;
    
    }
    return null;
  }

  /// Get SDTMIG Class List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrSdtmigVersionClassesGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtmig/{version}/classes'
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

  /// Get SDTMIG Class List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<SdtmigClasses?> mdrSdtmigVersionClassesGet(String version,) async {
    final response = await mdrSdtmigVersionClassesGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmigClasses',) as SdtmigClasses;
    
    }
    return null;
  }

  /// Get SDTMIG Dataset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SDTMIG Dataset Identifier
  Future<Response> mdrSdtmigVersionDatasetsDatasetGetWithHttpInfo(String version, String dataset,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtmig/{version}/datasets/{dataset}'
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

  /// Get SDTMIG Dataset
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SDTMIG Dataset Identifier
  Future<SdtmigDataset?> mdrSdtmigVersionDatasetsDatasetGet(String version, String dataset,) async {
    final response = await mdrSdtmigVersionDatasetsDatasetGetWithHttpInfo(version, dataset,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmigDataset',) as SdtmigDataset;
    
    }
    return null;
  }

  /// Get SDTMIG Dataset Variable List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SDTMIG Dataset Identifier
  Future<Response> mdrSdtmigVersionDatasetsDatasetVariablesGetWithHttpInfo(String version, String dataset,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtmig/{version}/datasets/{dataset}/variables'
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

  /// Get SDTMIG Dataset Variable List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SDTMIG Dataset Identifier
  Future<SdtmigDatasetVariables?> mdrSdtmigVersionDatasetsDatasetVariablesGet(String version, String dataset,) async {
    final response = await mdrSdtmigVersionDatasetsDatasetVariablesGetWithHttpInfo(version, dataset,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmigDatasetVariables',) as SdtmigDatasetVariables;
    
    }
    return null;
  }

  /// Get SDTMIG Dataset Variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SDTMIG Dataset Identifier
  ///
  /// * [String] var_ (required):
  ///   SDTMIG Variable Identifier
  Future<Response> mdrSdtmigVersionDatasetsDatasetVariablesVarGetWithHttpInfo(String version, String dataset, String var_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtmig/{version}/datasets/{dataset}/variables/{var}'
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

  /// Get SDTMIG Dataset Variable
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SDTMIG Dataset Identifier
  ///
  /// * [String] var_ (required):
  ///   SDTMIG Variable Identifier
  Future<SdtmigDatasetVariable?> mdrSdtmigVersionDatasetsDatasetVariablesVarGet(String version, String dataset, String var_,) async {
    final response = await mdrSdtmigVersionDatasetsDatasetVariablesVarGetWithHttpInfo(version, dataset, var_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmigDatasetVariable',) as SdtmigDatasetVariable;
    
    }
    return null;
  }

  /// Get SDTMIG Dataset List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrSdtmigVersionDatasetsGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtmig/{version}/datasets'
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

  /// Get SDTMIG Dataset List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<SdtmigDatasets?> mdrSdtmigVersionDatasetsGet(String version,) async {
    final response = await mdrSdtmigVersionDatasetsGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmigDatasets',) as SdtmigDatasets;
    
    }
    return null;
  }

  /// Get SDTMIG product
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrSdtmigVersionGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtmig/{version}'
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

  /// Get SDTMIG product
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<SdtmigProduct?> mdrSdtmigVersionGet(String version,) async {
    final response = await mdrSdtmigVersionGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmigProduct',) as SdtmigProduct;
    
    }
    return null;
  }
}
