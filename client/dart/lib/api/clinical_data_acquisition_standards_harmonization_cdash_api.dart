//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ClinicalDataAcquisitionStandardsHarmonizationCDASHApi {
  ClinicalDataAcquisitionStandardsHarmonizationCDASHApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get CDASH Class Domain List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   CDASH Class Identifier
  Future<Response> mdrCdashVersionClassesClassDomainsGetWithHttpInfo(String version, String class_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdash/{version}/classes/{class}/domains'
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

  /// Get CDASH Class Domain List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   CDASH Class Identifier
  Future<CdashClassDomains?> mdrCdashVersionClassesClassDomainsGet(String version, String class_,) async {
    final response = await mdrCdashVersionClassesClassDomainsGetWithHttpInfo(version, class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashClassDomains',) as CdashClassDomains;
    
    }
    return null;
  }

  /// Get CDASH Class Field
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   CDASH Class Identifier
  ///
  /// * [String] field (required):
  ///   CDASH Field Identifier
  Future<Response> mdrCdashVersionClassesClassFieldsFieldGetWithHttpInfo(String version, String class_, String field,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdash/{version}/classes/{class}/fields/{field}'
      .replaceAll('{version}', version)
      .replaceAll('{class}', class_)
      .replaceAll('{field}', field);

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

  /// Get CDASH Class Field
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   CDASH Class Identifier
  ///
  /// * [String] field (required):
  ///   CDASH Field Identifier
  Future<CdashClassField?> mdrCdashVersionClassesClassFieldsFieldGet(String version, String class_, String field,) async {
    final response = await mdrCdashVersionClassesClassFieldsFieldGetWithHttpInfo(version, class_, field,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashClassField',) as CdashClassField;
    
    }
    return null;
  }

  /// Get CDASH Class
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   CDASH Class Identifier
  Future<Response> mdrCdashVersionClassesClassGetWithHttpInfo(String version, String class_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdash/{version}/classes/{class}'
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

  /// Get CDASH Class
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   CDASH Class Identifier
  Future<CdashClass?> mdrCdashVersionClassesClassGet(String version, String class_,) async {
    final response = await mdrCdashVersionClassesClassGetWithHttpInfo(version, class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashClass',) as CdashClass;
    
    }
    return null;
  }

  /// Get CDASH Class List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrCdashVersionClassesGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdash/{version}/classes'
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

  /// Get CDASH Class List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<CdashProductClasses?> mdrCdashVersionClassesGet(String version,) async {
    final response = await mdrCdashVersionClassesGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashProductClasses',) as CdashProductClasses;
    
    }
    return null;
  }

  /// Get CDASH Domain Field
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASH Domain Identifier
  ///
  /// * [String] field (required):
  ///   CDASH Field Identifier
  Future<Response> mdrCdashVersionDomainsDomainFieldsFieldGetWithHttpInfo(String version, String domain, String field,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdash/{version}/domains/{domain}/fields/{field}'
      .replaceAll('{version}', version)
      .replaceAll('{domain}', domain)
      .replaceAll('{field}', field);

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

  /// Get CDASH Domain Field
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASH Domain Identifier
  ///
  /// * [String] field (required):
  ///   CDASH Field Identifier
  Future<CdashDomainField?> mdrCdashVersionDomainsDomainFieldsFieldGet(String version, String domain, String field,) async {
    final response = await mdrCdashVersionDomainsDomainFieldsFieldGetWithHttpInfo(version, domain, field,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashDomainField',) as CdashDomainField;
    
    }
    return null;
  }

  /// Get CDASH Domain Field List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASH Domain Identifier
  Future<Response> mdrCdashVersionDomainsDomainFieldsGetWithHttpInfo(String version, String domain,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdash/{version}/domains/{domain}/fields'
      .replaceAll('{version}', version)
      .replaceAll('{domain}', domain);

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

  /// Get CDASH Domain Field List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASH Domain Identifier
  Future<CdashDomainFields?> mdrCdashVersionDomainsDomainFieldsGet(String version, String domain,) async {
    final response = await mdrCdashVersionDomainsDomainFieldsGetWithHttpInfo(version, domain,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashDomainFields',) as CdashDomainFields;
    
    }
    return null;
  }

  /// Get CDASH Domain
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASH Domain Identifier
  Future<Response> mdrCdashVersionDomainsDomainGetWithHttpInfo(String version, String domain,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdash/{version}/domains/{domain}'
      .replaceAll('{version}', version)
      .replaceAll('{domain}', domain);

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

  /// Get CDASH Domain
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASH Domain Identifier
  Future<CdashDomain?> mdrCdashVersionDomainsDomainGet(String version, String domain,) async {
    final response = await mdrCdashVersionDomainsDomainGetWithHttpInfo(version, domain,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashDomain',) as CdashDomain;
    
    }
    return null;
  }

  /// Get CDASH Domain List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrCdashVersionDomainsGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdash/{version}/domains'
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

  /// Get CDASH Domain List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<CdashProductDomains?> mdrCdashVersionDomainsGet(String version,) async {
    final response = await mdrCdashVersionDomainsGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashProductDomains',) as CdashProductDomains;
    
    }
    return null;
  }

  /// Get CDASH Product
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrCdashVersionGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdash/{version}'
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

  /// Get CDASH Product
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<CdashProduct?> mdrCdashVersionGet(String version,) async {
    final response = await mdrCdashVersionGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashProduct',) as CdashProduct;
    
    }
    return null;
  }

  /// Get Root CDASH Class Field
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] class_ (required):
  ///   CDASH Class Identifier
  ///
  /// * [String] field (required):
  ///   CDASH Field Identifier
  Future<Response> mdrRootCdashClassesClassFieldsFieldGetWithHttpInfo(String class_, String field,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/root/cdash/classes/{class}/fields/{field}'
      .replaceAll('{class}', class_)
      .replaceAll('{field}', field);

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

  /// Get Root CDASH Class Field
  ///
  /// Parameters:
  ///
  /// * [String] class_ (required):
  ///   CDASH Class Identifier
  ///
  /// * [String] field (required):
  ///   CDASH Field Identifier
  Future<RootCdashClassField?> mdrRootCdashClassesClassFieldsFieldGet(String class_, String field,) async {
    final response = await mdrRootCdashClassesClassFieldsFieldGetWithHttpInfo(class_, field,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RootCdashClassField',) as RootCdashClassField;
    
    }
    return null;
  }

  /// Get Root CDASH Domain Field
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///   CDASH Domain Identifier
  ///
  /// * [String] field (required):
  ///   CDASH Field Identifier
  Future<Response> mdrRootCdashDomainsDomainFieldsFieldGetWithHttpInfo(String domain, String field,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/root/cdash/domains/{domain}/fields/{field}'
      .replaceAll('{domain}', domain)
      .replaceAll('{field}', field);

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

  /// Get Root CDASH Domain Field
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///   CDASH Domain Identifier
  ///
  /// * [String] field (required):
  ///   CDASH Field Identifier
  Future<RootCdashDomainField?> mdrRootCdashDomainsDomainFieldsFieldGet(String domain, String field,) async {
    final response = await mdrRootCdashDomainsDomainFieldsFieldGetWithHttpInfo(domain, field,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RootCdashDomainField',) as RootCdashDomainField;
    
    }
    return null;
  }
}
