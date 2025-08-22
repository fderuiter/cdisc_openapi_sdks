//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ControlledTerminologyCTApi {
  ControlledTerminologyCTApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get CDISC Library CT Package List
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> mdrCtPackagesGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/ct/packages';

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

  /// Get CDISC Library CT Package List
  Future<CtPackages?> mdrCtPackagesGet() async {
    final response = await mdrCtPackagesGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CtPackages',) as CtPackages;
    
    }
    return null;
  }

  /// Get CDISC Library CT Package Codelist
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] package (required):
  ///   CT Package Identifier
  ///
  /// * [String] codelist (required):
  ///   CT Codelist Identifier
  Future<Response> mdrCtPackagesPackageCodelistsCodelistGetWithHttpInfo(String package, String codelist,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/ct/packages/{package}/codelists/{codelist}'
      .replaceAll('{package}', package)
      .replaceAll('{codelist}', codelist);

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

  /// Get CDISC Library CT Package Codelist
  ///
  /// Parameters:
  ///
  /// * [String] package (required):
  ///   CT Package Identifier
  ///
  /// * [String] codelist (required):
  ///   CT Codelist Identifier
  Future<CtCodelist?> mdrCtPackagesPackageCodelistsCodelistGet(String package, String codelist,) async {
    final response = await mdrCtPackagesPackageCodelistsCodelistGetWithHttpInfo(package, codelist,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CtCodelist',) as CtCodelist;
    
    }
    return null;
  }

  /// Get CDISC Library CT Package Codelist Term List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] package (required):
  ///   CT Package Identifier
  ///
  /// * [String] codelist (required):
  ///   CT Codelist Identifier
  Future<Response> mdrCtPackagesPackageCodelistsCodelistTermsGetWithHttpInfo(String package, String codelist,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/ct/packages/{package}/codelists/{codelist}/terms'
      .replaceAll('{package}', package)
      .replaceAll('{codelist}', codelist);

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

  /// Get CDISC Library CT Package Codelist Term List
  ///
  /// Parameters:
  ///
  /// * [String] package (required):
  ///   CT Package Identifier
  ///
  /// * [String] codelist (required):
  ///   CT Codelist Identifier
  Future<CtCodelistTerms?> mdrCtPackagesPackageCodelistsCodelistTermsGet(String package, String codelist,) async {
    final response = await mdrCtPackagesPackageCodelistsCodelistTermsGetWithHttpInfo(package, codelist,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CtCodelistTerms',) as CtCodelistTerms;
    
    }
    return null;
  }

  /// Get CDISC Library CT Package Codelist Term
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] package (required):
  ///   CT Package Product Identifier
  ///
  /// * [String] codelist (required):
  ///   CT Codelist Identifier
  ///
  /// * [String] term (required):
  ///   CT Codelist Term Identifier
  Future<Response> mdrCtPackagesPackageCodelistsCodelistTermsTermGetWithHttpInfo(String package, String codelist, String term,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/ct/packages/{package}/codelists/{codelist}/terms/{term}'
      .replaceAll('{package}', package)
      .replaceAll('{codelist}', codelist)
      .replaceAll('{term}', term);

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

  /// Get CDISC Library CT Package Codelist Term
  ///
  /// Parameters:
  ///
  /// * [String] package (required):
  ///   CT Package Product Identifier
  ///
  /// * [String] codelist (required):
  ///   CT Codelist Identifier
  ///
  /// * [String] term (required):
  ///   CT Codelist Term Identifier
  Future<CtTerm?> mdrCtPackagesPackageCodelistsCodelistTermsTermGet(String package, String codelist, String term,) async {
    final response = await mdrCtPackagesPackageCodelistsCodelistTermsTermGetWithHttpInfo(package, codelist, term,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CtTerm',) as CtTerm;
    
    }
    return null;
  }

  /// Get CDISC Library CT Package Codelist List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] package (required):
  ///   CT Package Identifier
  Future<Response> mdrCtPackagesPackageCodelistsGetWithHttpInfo(String package,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/ct/packages/{package}/codelists'
      .replaceAll('{package}', package);

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

  /// Get CDISC Library CT Package Codelist List
  ///
  /// Parameters:
  ///
  /// * [String] package (required):
  ///   CT Package Identifier
  Future<CtPackageCodelists?> mdrCtPackagesPackageCodelistsGet(String package,) async {
    final response = await mdrCtPackagesPackageCodelistsGetWithHttpInfo(package,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CtPackageCodelists',) as CtPackageCodelists;
    
    }
    return null;
  }

  /// Get CDISC Library CT Package
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CT Package Product Identifier
  Future<Response> mdrCtPackagesProductGetWithHttpInfo(String product,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/ct/packages/{product}'
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

  /// Get CDISC Library CT Package
  ///
  /// Parameters:
  ///
  /// * [String] product (required):
  ///   CT Package Product Identifier
  Future<CtPackage?> mdrCtPackagesProductGet(String product,) async {
    final response = await mdrCtPackagesProductGetWithHttpInfo(product,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CtPackage',) as CtPackage;
    
    }
    return null;
  }

  /// Get CDISC Library Root CT Codelist
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] productGroup (required):
  ///   CT Product Group Identifier
  ///
  /// * [String] codelist (required):
  ///   CT Codelist Identifier
  Future<Response> mdrRootCtProductGroupCodelistsCodelistGetWithHttpInfo(String productGroup, String codelist,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/root/ct/{productGroup}/codelists/{codelist}'
      .replaceAll('{productGroup}', productGroup)
      .replaceAll('{codelist}', codelist);

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

  /// Get CDISC Library Root CT Codelist
  ///
  /// Parameters:
  ///
  /// * [String] productGroup (required):
  ///   CT Product Group Identifier
  ///
  /// * [String] codelist (required):
  ///   CT Codelist Identifier
  Future<RootCtCodelist?> mdrRootCtProductGroupCodelistsCodelistGet(String productGroup, String codelist,) async {
    final response = await mdrRootCtProductGroupCodelistsCodelistGetWithHttpInfo(productGroup, codelist,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RootCtCodelist',) as RootCtCodelist;
    
    }
    return null;
  }

  /// Get CDISC Library Root CT Term
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] productGroup (required):
  ///   CT Product Group Identifier
  ///
  /// * [String] codelist (required):
  ///   CT Codelist Identifier
  ///
  /// * [String] term (required):
  ///   CT Codelist Term Identifier
  Future<Response> mdrRootCtProductGroupCodelistsCodelistTermsTermGetWithHttpInfo(String productGroup, String codelist, String term,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term}'
      .replaceAll('{productGroup}', productGroup)
      .replaceAll('{codelist}', codelist)
      .replaceAll('{term}', term);

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

  /// Get CDISC Library Root CT Term
  ///
  /// Parameters:
  ///
  /// * [String] productGroup (required):
  ///   CT Product Group Identifier
  ///
  /// * [String] codelist (required):
  ///   CT Codelist Identifier
  ///
  /// * [String] term (required):
  ///   CT Codelist Term Identifier
  Future<RootCtTerm?> mdrRootCtProductGroupCodelistsCodelistTermsTermGet(String productGroup, String codelist, String term,) async {
    final response = await mdrRootCtProductGroupCodelistsCodelistTermsTermGetWithHttpInfo(productGroup, codelist, term,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RootCtTerm',) as RootCtTerm;
    
    }
    return null;
  }
}
