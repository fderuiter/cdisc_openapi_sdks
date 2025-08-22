//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi {
  AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get ADaM Data Structure List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  Future<Response> mdrAdamProductDatastructuresGetWithHttpInfo(String product,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/adam/{product}/datastructures'
      .replaceAll('{product}', product);

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

  /// Get ADaM Data Structure List
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  Future<AdamProductDatastructures?> mdrAdamProductDatastructuresGet(String product,) async {
    final response = await mdrAdamProductDatastructuresGetWithHttpInfo(product,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdamProductDatastructures',) as AdamProductDatastructures;
    
    }
    return null;
  }

  /// Get ADaM Data Structure
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  ///
  /// * [String] structure (required):
  ///   Data structure Identifier
  Future<Response> mdrAdamProductDatastructuresStructureGetWithHttpInfo(String product, String structure,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/adam/{product}/datastructures/{structure}'
      .replaceAll('{product}', product)
      .replaceAll('{structure}', structure);

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

  /// Get ADaM Data Structure
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  ///
  /// * [String] structure (required):
  ///   Data structure Identifier
  Future<AdamDatastructure?> mdrAdamProductDatastructuresStructureGet(String product, String structure,) async {
    final response = await mdrAdamProductDatastructuresStructureGetWithHttpInfo(product, structure,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdamDatastructure',) as AdamDatastructure;
    
    }
    return null;
  }

  /// Get ADaM Variable List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  ///
  /// * [String] structure (required):
  ///   ADaM Data Structure Identifier
  Future<Response> mdrAdamProductDatastructuresStructureVariablesGetWithHttpInfo(String product, String structure,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/adam/{product}/datastructures/{structure}/variables'
      .replaceAll('{product}', product)
      .replaceAll('{structure}', structure);

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

  /// Get ADaM Variable List
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  ///
  /// * [String] structure (required):
  ///   ADaM Data Structure Identifier
  Future<AdamDatastructureVariables?> mdrAdamProductDatastructuresStructureVariablesGet(String product, String structure,) async {
    final response = await mdrAdamProductDatastructuresStructureVariablesGetWithHttpInfo(product, structure,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdamDatastructureVariables',) as AdamDatastructureVariables;
    
    }
    return null;
  }

  /// Get ADaM Variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  ///
  /// * [String] structure (required):
  ///   ADaM Data Structure Identifier
  ///
  /// * [String] var_ (required):
  ///   ADaM Variable Identifier
  Future<Response> mdrAdamProductDatastructuresStructureVariablesVarGetWithHttpInfo(String product, String structure, String var_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/adam/{product}/datastructures/{structure}/variables/{var}'
      .replaceAll('{product}', product)
      .replaceAll('{structure}', structure)
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

  /// Get ADaM Variable
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  ///
  /// * [String] structure (required):
  ///   ADaM Data Structure Identifier
  ///
  /// * [String] var_ (required):
  ///   ADaM Variable Identifier
  Future<AdamVariable?> mdrAdamProductDatastructuresStructureVariablesVarGet(String product, String structure, String var_,) async {
    final response = await mdrAdamProductDatastructuresStructureVariablesVarGetWithHttpInfo(product, structure, var_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdamVariable',) as AdamVariable;
    
    }
    return null;
  }

  /// Get ADaM Variable Set List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  ///
  /// * [String] structure (required):
  ///   ADaM Data Structure Identifier
  Future<Response> mdrAdamProductDatastructuresStructureVarsetsGetWithHttpInfo(String product, String structure,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/adam/{product}/datastructures/{structure}/varsets'
      .replaceAll('{product}', product)
      .replaceAll('{structure}', structure);

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

  /// Get ADaM Variable Set List
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  ///
  /// * [String] structure (required):
  ///   ADaM Data Structure Identifier
  Future<AdamDatastructureVarsets?> mdrAdamProductDatastructuresStructureVarsetsGet(String product, String structure,) async {
    final response = await mdrAdamProductDatastructuresStructureVarsetsGetWithHttpInfo(product, structure,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdamDatastructureVarsets',) as AdamDatastructureVarsets;
    
    }
    return null;
  }

  /// Get ADaM Variable Set
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  ///
  /// * [String] structure (required):
  ///   ADaM Data Structure Identifier
  ///
  /// * [String] varset (required):
  ///   ADaM Variable Set Identifier
  Future<Response> mdrAdamProductDatastructuresStructureVarsetsVarsetGetWithHttpInfo(String product, String structure, String varset,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/adam/{product}/datastructures/{structure}/varsets/{varset}'
      .replaceAll('{product}', product)
      .replaceAll('{structure}', structure)
      .replaceAll('{varset}', varset);

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

  /// Get ADaM Variable Set
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  ///
  /// * [String] structure (required):
  ///   ADaM Data Structure Identifier
  ///
  /// * [String] varset (required):
  ///   ADaM Variable Set Identifier
  Future<AdamVarset?> mdrAdamProductDatastructuresStructureVarsetsVarsetGet(String product, String structure, String varset,) async {
    final response = await mdrAdamProductDatastructuresStructureVarsetsVarsetGetWithHttpInfo(product, structure, varset,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdamVarset',) as AdamVarset;
    
    }
    return null;
  }

  /// Get ADaM Product
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  Future<Response> mdrAdamProductGetWithHttpInfo(String product,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/adam/{product}'
      .replaceAll('{product}', product);

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

  /// Get ADaM Product
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CDISC Library Product
  Future<AdamProduct?> mdrAdamProductGet(String product,) async {
    final response = await mdrAdamProductGetWithHttpInfo(product,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdamProduct',) as AdamProduct;
    
    }
    return null;
  }
}
