//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CDASHImplementationGuideCDASHIGApi {
  CDASHImplementationGuideCDASHIGApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get CDASHIG Class Domain List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   CDASHIG Class Identifier
  Future<Response> mdrCdashigVersionClassesClassDomainsGetWithHttpInfo(String version, String class_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}/classes/{class}/domains'
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

  /// Get CDASHIG Class Domain List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   CDASHIG Class Identifier
  Future<CdashigClassDomains?> mdrCdashigVersionClassesClassDomainsGet(String version, String class_,) async {
    final response = await mdrCdashigVersionClassesClassDomainsGetWithHttpInfo(version, class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigClassDomains',) as CdashigClassDomains;
    
    }
    return null;
  }

  /// Get CDASHIG Class
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   CDASHIG Class Identifier
  Future<Response> mdrCdashigVersionClassesClassGetWithHttpInfo(String version, String class_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}/classes/{class}'
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

  /// Get CDASHIG Class
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   CDASHIG Class Identifier
  Future<CdashigClass?> mdrCdashigVersionClassesClassGet(String version, String class_,) async {
    final response = await mdrCdashigVersionClassesClassGetWithHttpInfo(version, class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigClass',) as CdashigClass;
    
    }
    return null;
  }

  /// Get CDASHIG Class Scenario List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   CDASHIG Class Identifier
  Future<Response> mdrCdashigVersionClassesClassScenariosGetWithHttpInfo(String version, String class_,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}/classes/{class}/scenarios'
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

  /// Get CDASHIG Class Scenario List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] class_ (required):
  ///   CDASHIG Class Identifier
  Future<CdashigClassScenarios?> mdrCdashigVersionClassesClassScenariosGet(String version, String class_,) async {
    final response = await mdrCdashigVersionClassesClassScenariosGetWithHttpInfo(version, class_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigClassScenarios',) as CdashigClassScenarios;
    
    }
    return null;
  }

  /// Get CDASHIG Class List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrCdashigVersionClassesGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}/classes'
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

  /// Get CDASHIG Class List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<CdashigProductClasses?> mdrCdashigVersionClassesGet(String version,) async {
    final response = await mdrCdashigVersionClassesGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigProductClasses',) as CdashigProductClasses;
    
    }
    return null;
  }

  /// Get CDASHIG Domain Field
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  ///
  /// * [String] field (required):
  ///   CDASHIG Field Identifier
  Future<Response> mdrCdashigVersionDomainsDomainFieldsFieldGetWithHttpInfo(String version, String domain, String field,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}/domains/{domain}/fields/{field}'
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

  /// Get CDASHIG Domain Field
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  ///
  /// * [String] field (required):
  ///   CDASHIG Field Identifier
  Future<CdashigDomainField?> mdrCdashigVersionDomainsDomainFieldsFieldGet(String version, String domain, String field,) async {
    final response = await mdrCdashigVersionDomainsDomainFieldsFieldGetWithHttpInfo(version, domain, field,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigDomainField',) as CdashigDomainField;
    
    }
    return null;
  }

  /// Get CDASHIG Domain Field List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  Future<Response> mdrCdashigVersionDomainsDomainFieldsGetWithHttpInfo(String version, String domain,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}/domains/{domain}/fields'
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

  /// Get CDASHIG Domain Field List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  Future<CdashigDomainFields?> mdrCdashigVersionDomainsDomainFieldsGet(String version, String domain,) async {
    final response = await mdrCdashigVersionDomainsDomainFieldsGetWithHttpInfo(version, domain,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigDomainFields',) as CdashigDomainFields;
    
    }
    return null;
  }

  /// Get CDASHIG Domain
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  Future<Response> mdrCdashigVersionDomainsDomainGetWithHttpInfo(String version, String domain,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}/domains/{domain}'
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

  /// Get CDASHIG Domain
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  Future<CdashigDomain?> mdrCdashigVersionDomainsDomainGet(String version, String domain,) async {
    final response = await mdrCdashigVersionDomainsDomainGetWithHttpInfo(version, domain,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigDomain',) as CdashigDomain;
    
    }
    return null;
  }

  /// Get CDASHIG Domain List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrCdashigVersionDomainsGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}/domains'
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

  /// Get CDASHIG Domain List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<CdashigProductDomains?> mdrCdashigVersionDomainsGet(String version,) async {
    final response = await mdrCdashigVersionDomainsGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigProductDomains',) as CdashigProductDomains;
    
    }
    return null;
  }

  /// Get CDASHIG Product
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrCdashigVersionGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}'
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

  /// Get CDASHIG Product
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<CdashigProduct?> mdrCdashigVersionGet(String version,) async {
    final response = await mdrCdashigVersionGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigProduct',) as CdashigProduct;
    
    }
    return null;
  }

  /// Get CDASHIG Scenario Field
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  ///
  /// * [String] scenario (required):
  ///   CDASHIG Scenario Identifier
  ///
  /// * [String] field (required):
  ///   CDASHIG Field Identifier
  Future<Response> mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetWithHttpInfo(String version, String domain, String scenario, String field,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field}'
      .replaceAll('{version}', version)
      .replaceAll('{domain}', domain)
      .replaceAll('{scenario}', scenario)
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

  /// Get CDASHIG Scenario Field
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  ///
  /// * [String] scenario (required):
  ///   CDASHIG Scenario Identifier
  ///
  /// * [String] field (required):
  ///   CDASHIG Field Identifier
  Future<CdashigScenarioField?> mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(String version, String domain, String scenario, String field,) async {
    final response = await mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetWithHttpInfo(version, domain, scenario, field,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigScenarioField',) as CdashigScenarioField;
    
    }
    return null;
  }

  /// Get CDASHIG Scenario Field List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  ///
  /// * [String] scenario (required):
  ///   CDASHIG Scenario Identifier
  Future<Response> mdrCdashigVersionScenariosDomainScenarioFieldsGetWithHttpInfo(String version, String domain, String scenario,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields'
      .replaceAll('{version}', version)
      .replaceAll('{domain}', domain)
      .replaceAll('{scenario}', scenario);

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

  /// Get CDASHIG Scenario Field List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  ///
  /// * [String] scenario (required):
  ///   CDASHIG Scenario Identifier
  Future<CdashigScenarioFields?> mdrCdashigVersionScenariosDomainScenarioFieldsGet(String version, String domain, String scenario,) async {
    final response = await mdrCdashigVersionScenariosDomainScenarioFieldsGetWithHttpInfo(version, domain, scenario,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigScenarioFields',) as CdashigScenarioFields;
    
    }
    return null;
  }

  /// Get CDASHIG Scenario
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  ///
  /// * [String] scenario (required):
  ///   CDASHIG Scenario Identifier
  Future<Response> mdrCdashigVersionScenariosDomainScenarioGetWithHttpInfo(String version, String domain, String scenario,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}/scenarios/{domain}.{scenario}'
      .replaceAll('{version}', version)
      .replaceAll('{domain}', domain)
      .replaceAll('{scenario}', scenario);

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

  /// Get CDASHIG Scenario
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  ///
  /// * [String] scenario (required):
  ///   CDASHIG Scenario Identifier
  Future<CdashigScenario?> mdrCdashigVersionScenariosDomainScenarioGet(String version, String domain, String scenario,) async {
    final response = await mdrCdashigVersionScenariosDomainScenarioGetWithHttpInfo(version, domain, scenario,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigScenario',) as CdashigScenario;
    
    }
    return null;
  }

  /// Get CDASHIG Scenario List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<Response> mdrCdashigVersionScenariosGetWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/cdashig/{version}/scenarios'
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

  /// Get CDASHIG Scenario List
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   CDISC Library Product Version
  Future<CdashigProductScenarios?> mdrCdashigVersionScenariosGet(String version,) async {
    final response = await mdrCdashigVersionScenariosGetWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CdashigProductScenarios',) as CdashigProductScenarios;
    
    }
    return null;
  }

  /// Get Root CDASHIG Domain Field
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  ///
  /// * [String] field (required):
  ///   CDASHIG Field Identifier
  Future<Response> mdrRootCdashigDomainsDomainFieldsFieldGetWithHttpInfo(String domain, String field,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/root/cdashig/domains/{domain}/fields/{field}'
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

  /// Get Root CDASHIG Domain Field
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  ///
  /// * [String] field (required):
  ///   CDASHIG Field Identifier
  Future<RootCdashigDomainField?> mdrRootCdashigDomainsDomainFieldsFieldGet(String domain, String field,) async {
    final response = await mdrRootCdashigDomainsDomainFieldsFieldGetWithHttpInfo(domain, field,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RootCdashigDomainField',) as RootCdashigDomainField;
    
    }
    return null;
  }

  /// Get Root CDASHIG Scenario Field
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  ///
  /// * [String] scenario (required):
  ///   CDASHIG Scenario Identifier
  ///
  /// * [String] field (required):
  ///   CDASHIG Field Identifier
  Future<Response> mdrRootCdashigScenariosDomainScenarioFieldsFieldGetWithHttpInfo(String domain, String scenario, String field,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field}'
      .replaceAll('{domain}', domain)
      .replaceAll('{scenario}', scenario)
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

  /// Get Root CDASHIG Scenario Field
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///   CDASHIG Domain Identifier
  ///
  /// * [String] scenario (required):
  ///   CDASHIG Scenario Identifier
  ///
  /// * [String] field (required):
  ///   CDASHIG Field Identifier
  Future<RootCdashigScenarioField?> mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(String domain, String scenario, String field,) async {
    final response = await mdrRootCdashigScenariosDomainScenarioFieldsFieldGetWithHttpInfo(domain, scenario, field,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RootCdashigScenarioField',) as RootCdashigScenarioField;
    
    }
    return null;
  }
}
