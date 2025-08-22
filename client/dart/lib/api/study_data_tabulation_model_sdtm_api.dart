//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StudyDataTabulationModelSDTMApi {
  StudyDataTabulationModelSDTMApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Root of SDTM Class Variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] class_ (required):
  ///   SDTM Class Identifier
  ///
  /// * [String] var_ (required):
  ///   SDTM Variable Identifier
  Future<Response> mdrRootSdtmClassesClassVariablesVarGetWithHttpInfo(String class_, String var_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/root/sdtm/classes/{class}/variables/{var}'
      .replaceAll('{class}', class_)
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

  /// Get Root of SDTM Class Variable
  ///
  /// Parameters:
  ///
  /// * [String] class_ (required):
  ///   SDTM Class Identifier
  ///
  /// * [String] var_ (required):
  ///   SDTM Variable Identifier
  Future<RootSdtmClassVariable?> mdrRootSdtmClassesClassVariablesVarGet(String class_, String var_,) async {
    final response = await mdrRootSdtmClassesClassVariablesVarGetWithHttpInfo(class_, var_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RootSdtmClassVariable',) as RootSdtmClassVariable;
    
    }
    return null;
  }

  /// Get Root SDTM Dataset Variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataset (required):
  ///   SDTM Dataset Identifier
  ///
  /// * [String] var_ (required):
  ///   SDTM Variable Identifier
  Future<Response> mdrRootSdtmDatasetsDatasetVariablesVarGetWithHttpInfo(String dataset, String var_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/root/sdtm/datasets/{dataset}/variables/{var}'
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

  /// Get Root SDTM Dataset Variable
  ///
  /// Parameters:
  ///
  /// * [String] dataset (required):
  ///   SDTM Dataset Identifier
  ///
  /// * [String] var_ (required):
  ///   SDTM Variable Identifier
  Future<RootSdtmDatasetVariable?> mdrRootSdtmDatasetsDatasetVariablesVarGet(String dataset, String var_,) async {
    final response = await mdrRootSdtmDatasetsDatasetVariablesVarGetWithHttpInfo(dataset, var_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RootSdtmDatasetVariable',) as RootSdtmDatasetVariable;
    
    }
    return null;
  }

  /// Get SDTM Class Dataset List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SDTM Class Identifier
  Future<Response> mdrSdtmVersionClassesClassDatasetsGetWithHttpInfo(String version, String class_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtm/{version}/classes/{class}/datasets'
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

  /// Get SDTM Class Dataset List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SDTM Class Identifier
  Future<SdtmClassDatasets?> mdrSdtmVersionClassesClassDatasetsGet(String version, String class_,) async {
    final response = await mdrSdtmVersionClassesClassDatasetsGetWithHttpInfo(version, class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmClassDatasets',) as SdtmClassDatasets;
    
    }
    return null;
  }

  /// Get SDTM Class
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SDTM Class Identifier
  Future<Response> mdrSdtmVersionClassesClassGetWithHttpInfo(String version, String class_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtm/{version}/classes/{class}'
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

  /// Get SDTM Class
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SDTM Class Identifier
  Future<SdtmClass?> mdrSdtmVersionClassesClassGet(String version, String class_,) async {
    final response = await mdrSdtmVersionClassesClassGetWithHttpInfo(version, class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmClass',) as SdtmClass;
    
    }
    return null;
  }

  /// Get SDTM Class Variable List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SDTM Class Identifier
  Future<Response> mdrSdtmVersionClassesClassVariablesGetWithHttpInfo(String version, String class_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtm/{version}/classes/{class}/variables'
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

  /// Get SDTM Class Variable List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SDTM Class Identifier
  Future<SdtmClassVariables?> mdrSdtmVersionClassesClassVariablesGet(String version, String class_,) async {
    final response = await mdrSdtmVersionClassesClassVariablesGetWithHttpInfo(version, class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmClassVariables',) as SdtmClassVariables;
    
    }
    return null;
  }

  /// Get SDTM Class Variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SDTM Class Identifier
  ///
  /// * [String] var_ (required):
  ///   SDTM Variable Identifier
  Future<Response> mdrSdtmVersionClassesClassVariablesVarGetWithHttpInfo(String version, String class_, String var_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtm/{version}/classes/{class}/variables/{var}'
      .replaceAll('{version}', version)
      .replaceAll('{class}', class_)
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

  /// Get SDTM Class Variable
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   SDTM Class Identifier
  ///
  /// * [String] var_ (required):
  ///   SDTM Variable Identifier
  Future<SdtmClassVariable?> mdrSdtmVersionClassesClassVariablesVarGet(String version, String class_, String var_,) async {
    final response = await mdrSdtmVersionClassesClassVariablesVarGetWithHttpInfo(version, class_, var_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmClassVariable',) as SdtmClassVariable;
    
    }
    return null;
  }

  /// Get SDTM Class List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrSdtmVersionClassesGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtm/{version}/classes'
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

  /// Get SDTM Class List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<SdtmClasses?> mdrSdtmVersionClassesGet(String version,) async {
    final response = await mdrSdtmVersionClassesGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmClasses',) as SdtmClasses;
    
    }
    return null;
  }

  /// Get SDTM Dataset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SDTM Dataset Identifier
  Future<Response> mdrSdtmVersionDatasetsDatasetGetWithHttpInfo(String version, String dataset,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtm/{version}/datasets/{dataset}'
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

  /// Get SDTM Dataset
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SDTM Dataset Identifier
  Future<SdtmDataset?> mdrSdtmVersionDatasetsDatasetGet(String version, String dataset,) async {
    final response = await mdrSdtmVersionDatasetsDatasetGetWithHttpInfo(version, dataset,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmDataset',) as SdtmDataset;
    
    }
    return null;
  }

  /// Get SDTM Dataset Variable List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SDTM Dataset Identifier
  Future<Response> mdrSdtmVersionDatasetsDatasetVariablesGetWithHttpInfo(String version, String dataset,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtm/{version}/datasets/{dataset}/variables'
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

  /// Get SDTM Dataset Variable List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SDTM Dataset Identifier
  Future<SdtmDatasetVariables?> mdrSdtmVersionDatasetsDatasetVariablesGet(String version, String dataset,) async {
    final response = await mdrSdtmVersionDatasetsDatasetVariablesGetWithHttpInfo(version, dataset,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmDatasetVariables',) as SdtmDatasetVariables;
    
    }
    return null;
  }

  /// Get SDTM Dataset Variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SDTM Dataset Identifier
  ///
  /// * [String] var_ (required):
  ///   SDTM Variable Identifier
  Future<Response> mdrSdtmVersionDatasetsDatasetVariablesVarGetWithHttpInfo(String version, String dataset, String var_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtm/{version}/datasets/{dataset}/variables/{var}'
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

  /// Get SDTM Dataset Variable
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] dataset (required):
  ///   SDTM Dataset Identifier
  ///
  /// * [String] var_ (required):
  ///   SDTM Variable Identifier
  Future<SdtmDatasetVariable?> mdrSdtmVersionDatasetsDatasetVariablesVarGet(String version, String dataset, String var_,) async {
    final response = await mdrSdtmVersionDatasetsDatasetVariablesVarGetWithHttpInfo(version, dataset, var_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmDatasetVariable',) as SdtmDatasetVariable;
    
    }
    return null;
  }

  /// Get SDTM Dataset List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrSdtmVersionDatasetsGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtm/{version}/datasets'
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

  /// Get SDTM Dataset List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<SdtmDatasets?> mdrSdtmVersionDatasetsGet(String version,) async {
    final response = await mdrSdtmVersionDatasetsGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmDatasets',) as SdtmDatasets;
    
    }
    return null;
  }

  /// Get SDTM product
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrSdtmVersionGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/sdtm/{version}'
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

  /// Get SDTM product
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<SdtmProduct?> mdrSdtmVersionGet(String version,) async {
    final response = await mdrSdtmVersionGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SdtmProduct',) as SdtmProduct;
    
    }
    return null;
  }
}
