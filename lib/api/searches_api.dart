//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SearchesApi {
  SearchesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Search Results Across CDISC Library
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Search Term Expression
  ///
  /// * [String] highlight:
  ///   Search Highlight Expression
  ///
  /// * [num] start:
  ///   Initial Search Result Index
  ///
  /// * [num] pageSize:
  ///   Number of Search Results to Return
  ///
  /// * [String] class_:
  ///   Limit Search by Setting Scope to Class
  ///
  /// * [String] codelist:
  ///   Limit Search by Setting Scope to Codelist
  ///
  /// * [String] conceptId:
  ///   Limit Search by Setting Scope to Concept ID
  ///
  /// * [String] core:
  ///   Limit Search by Setting Scope to Core
  ///
  /// * [String] dataStructure:
  ///   Limit Search by Setting Scope to Data Structure
  ///
  /// * [String] datasetStructure:
  ///   Limit Search by Setting Scope to Dataset Structure
  ///
  /// * [String] definition:
  ///   Limit Search by Setting Scope to Definition
  ///
  /// * [String] description:
  ///   Limit Search by Setting Scope to Description
  ///
  /// * [String] domain:
  ///   Limit Search by Setting Scope to Domain
  ///
  /// * [String] effectiveDate:
  ///   Limit Search by Setting Scope to Effective Date
  ///
  /// * [String] extensible:
  ///   Limit Search by Setting Scope to Extensible
  ///
  /// * [String] href:
  ///   Limit Search by Setting Scope to Href
  ///
  /// * [String] label:
  ///   Limit Search by Setting Scope to Label
  ///
  /// * [String] measureType:
  ///   SLimit Search by Setting Scope to Measure Type
  ///
  /// * [String] name:
  ///   Limit Search by Setting Scope to Name
  ///
  /// * [String] preferredTerm:
  ///   Limit Search by Setting Scope to Preferred Term
  ///
  /// * [String] product:
  ///   Limit Search by Setting Scope to Product
  ///
  /// * [String] productGroup:
  ///   Limit Search by Setting Scope to Product Group
  ///
  /// * [String] registrationStatus:
  ///   Limit Search by Setting Scope to Registration Status
  ///
  /// * [String] roleDescription:
  ///   Limit Search by Setting Scope to Role Description
  ///
  /// * [String] sdtmTarget:
  ///   Limit Search by Setting Scope to SDTM Target
  ///
  /// * [String] simpleDatatype:
  ///   Limit Search by Setting Scope to Simple Datatype
  ///
  /// * [String] submissionValue:
  ///   Limit Search by Setting Scope to Submission Value
  ///
  /// * [String] synonyms:
  ///   Limit Search by Setting Scope to Synonyms
  ///
  /// * [String] type:
  ///   Limit Search by Setting Scope to Type
  ///
  /// * [String] uiHref:
  ///   Limit Search by Setting Scope to UI Href
  ///
  /// * [String] valueDomain:
  ///   Limit Search by Setting Scope to Value Domain
  ///
  /// * [String] variableSet:
  ///   Limit Search by Setting Scope to Variable Set
  ///
  /// * [String] version:
  ///   Limit Search by Setting Scope to Version
  Future<Response> mdrSearchGetWithHttpInfo(String q, { String? highlight, num? start, num? pageSize, String? class_, String? codelist, String? conceptId, String? core, String? dataStructure, String? datasetStructure, String? definition, String? description, String? domain, String? effectiveDate, String? extensible, String? href, String? label, String? measureType, String? name, String? preferredTerm, String? product, String? productGroup, String? registrationStatus, String? roleDescription, String? sdtmTarget, String? simpleDatatype, String? submissionValue, String? synonyms, String? type, String? uiHref, String? valueDomain, String? variableSet, String? version, }) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'q', q));
    if (highlight != null) {
      queryParams.addAll(_queryParams('', 'highlight', highlight));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (class_ != null) {
      queryParams.addAll(_queryParams('', 'class', class_));
    }
    if (codelist != null) {
      queryParams.addAll(_queryParams('', 'codelist', codelist));
    }
    if (conceptId != null) {
      queryParams.addAll(_queryParams('', 'conceptId', conceptId));
    }
    if (core != null) {
      queryParams.addAll(_queryParams('', 'core', core));
    }
    if (dataStructure != null) {
      queryParams.addAll(_queryParams('', 'dataStructure', dataStructure));
    }
    if (datasetStructure != null) {
      queryParams.addAll(_queryParams('', 'datasetStructure', datasetStructure));
    }
    if (definition != null) {
      queryParams.addAll(_queryParams('', 'definition', definition));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (domain != null) {
      queryParams.addAll(_queryParams('', 'domain', domain));
    }
    if (effectiveDate != null) {
      queryParams.addAll(_queryParams('', 'effectiveDate', effectiveDate));
    }
    if (extensible != null) {
      queryParams.addAll(_queryParams('', 'extensible', extensible));
    }
    if (href != null) {
      queryParams.addAll(_queryParams('', 'href', href));
    }
    if (label != null) {
      queryParams.addAll(_queryParams('', 'label', label));
    }
    if (measureType != null) {
      queryParams.addAll(_queryParams('', 'measureType', measureType));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (preferredTerm != null) {
      queryParams.addAll(_queryParams('', 'preferredTerm', preferredTerm));
    }
    if (product != null) {
      queryParams.addAll(_queryParams('', 'product', product));
    }
    if (productGroup != null) {
      queryParams.addAll(_queryParams('', 'productGroup', productGroup));
    }
    if (registrationStatus != null) {
      queryParams.addAll(_queryParams('', 'registrationStatus', registrationStatus));
    }
    if (roleDescription != null) {
      queryParams.addAll(_queryParams('', 'roleDescription', roleDescription));
    }
    if (sdtmTarget != null) {
      queryParams.addAll(_queryParams('', 'sdtmTarget', sdtmTarget));
    }
    if (simpleDatatype != null) {
      queryParams.addAll(_queryParams('', 'simpleDatatype', simpleDatatype));
    }
    if (submissionValue != null) {
      queryParams.addAll(_queryParams('', 'submissionValue', submissionValue));
    }
    if (synonyms != null) {
      queryParams.addAll(_queryParams('', 'synonyms', synonyms));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (uiHref != null) {
      queryParams.addAll(_queryParams('', 'uiHref', uiHref));
    }
    if (valueDomain != null) {
      queryParams.addAll(_queryParams('', 'valueDomain', valueDomain));
    }
    if (variableSet != null) {
      queryParams.addAll(_queryParams('', 'variableSet', variableSet));
    }
    if (version != null) {
      queryParams.addAll(_queryParams('', 'version', version));
    }

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

  /// Get Search Results Across CDISC Library
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Search Term Expression
  ///
  /// * [String] highlight:
  ///   Search Highlight Expression
  ///
  /// * [num] start:
  ///   Initial Search Result Index
  ///
  /// * [num] pageSize:
  ///   Number of Search Results to Return
  ///
  /// * [String] class_:
  ///   Limit Search by Setting Scope to Class
  ///
  /// * [String] codelist:
  ///   Limit Search by Setting Scope to Codelist
  ///
  /// * [String] conceptId:
  ///   Limit Search by Setting Scope to Concept ID
  ///
  /// * [String] core:
  ///   Limit Search by Setting Scope to Core
  ///
  /// * [String] dataStructure:
  ///   Limit Search by Setting Scope to Data Structure
  ///
  /// * [String] datasetStructure:
  ///   Limit Search by Setting Scope to Dataset Structure
  ///
  /// * [String] definition:
  ///   Limit Search by Setting Scope to Definition
  ///
  /// * [String] description:
  ///   Limit Search by Setting Scope to Description
  ///
  /// * [String] domain:
  ///   Limit Search by Setting Scope to Domain
  ///
  /// * [String] effectiveDate:
  ///   Limit Search by Setting Scope to Effective Date
  ///
  /// * [String] extensible:
  ///   Limit Search by Setting Scope to Extensible
  ///
  /// * [String] href:
  ///   Limit Search by Setting Scope to Href
  ///
  /// * [String] label:
  ///   Limit Search by Setting Scope to Label
  ///
  /// * [String] measureType:
  ///   SLimit Search by Setting Scope to Measure Type
  ///
  /// * [String] name:
  ///   Limit Search by Setting Scope to Name
  ///
  /// * [String] preferredTerm:
  ///   Limit Search by Setting Scope to Preferred Term
  ///
  /// * [String] product:
  ///   Limit Search by Setting Scope to Product
  ///
  /// * [String] productGroup:
  ///   Limit Search by Setting Scope to Product Group
  ///
  /// * [String] registrationStatus:
  ///   Limit Search by Setting Scope to Registration Status
  ///
  /// * [String] roleDescription:
  ///   Limit Search by Setting Scope to Role Description
  ///
  /// * [String] sdtmTarget:
  ///   Limit Search by Setting Scope to SDTM Target
  ///
  /// * [String] simpleDatatype:
  ///   Limit Search by Setting Scope to Simple Datatype
  ///
  /// * [String] submissionValue:
  ///   Limit Search by Setting Scope to Submission Value
  ///
  /// * [String] synonyms:
  ///   Limit Search by Setting Scope to Synonyms
  ///
  /// * [String] type:
  ///   Limit Search by Setting Scope to Type
  ///
  /// * [String] uiHref:
  ///   Limit Search by Setting Scope to UI Href
  ///
  /// * [String] valueDomain:
  ///   Limit Search by Setting Scope to Value Domain
  ///
  /// * [String] variableSet:
  ///   Limit Search by Setting Scope to Variable Set
  ///
  /// * [String] version:
  ///   Limit Search by Setting Scope to Version
  Future<DefaultSearchResponse?> mdrSearchGet(String q, { String? highlight, num? start, num? pageSize, String? class_, String? codelist, String? conceptId, String? core, String? dataStructure, String? datasetStructure, String? definition, String? description, String? domain, String? effectiveDate, String? extensible, String? href, String? label, String? measureType, String? name, String? preferredTerm, String? product, String? productGroup, String? registrationStatus, String? roleDescription, String? sdtmTarget, String? simpleDatatype, String? submissionValue, String? synonyms, String? type, String? uiHref, String? valueDomain, String? variableSet, String? version, }) async {
    final response = await mdrSearchGetWithHttpInfo(q,  highlight: highlight, start: start, pageSize: pageSize, class_: class_, codelist: codelist, conceptId: conceptId, core: core, dataStructure: dataStructure, datasetStructure: datasetStructure, definition: definition, description: description, domain: domain, effectiveDate: effectiveDate, extensible: extensible, href: href, label: label, measureType: measureType, name: name, preferredTerm: preferredTerm, product: product, productGroup: productGroup, registrationStatus: registrationStatus, roleDescription: roleDescription, sdtmTarget: sdtmTarget, simpleDatatype: simpleDatatype, submissionValue: submissionValue, synonyms: synonyms, type: type, uiHref: uiHref, valueDomain: valueDomain, variableSet: variableSet, version: version, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DefaultSearchResponse',) as DefaultSearchResponse;
    
    }
    return null;
  }

  /// Get Search Results Across CDISC Library
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> mdrSearchScopesGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/search/scopes';

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

  /// Get Search Results Across CDISC Library
  Future<MdrSearchScopesGet200Response?> mdrSearchScopesGet() async {
    final response = await mdrSearchScopesGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MdrSearchScopesGet200Response',) as MdrSearchScopesGet200Response;
    
    }
    return null;
  }

  /// Get Search Results Limited to Scope
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DefaultSearchScopes] scope (required):
  ///   Search Scope
  Future<Response> mdrSearchScopesScopeGetWithHttpInfo(DefaultSearchScopes scope,) async {
    // ignore: prefer_const_declarations
    final path = r'/mdr/search/scopes/{scope}'
      .replaceAll('{scope}', scope.toString());

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

  /// Get Search Results Limited to Scope
  ///
  /// Parameters:
  ///
  /// * [DefaultSearchScopes] scope (required):
  ///   Search Scope
  Future<ScopeValues?> mdrSearchScopesScopeGet(DefaultSearchScopes scope,) async {
    final response = await mdrSearchScopesScopeGetWithHttpInfo(scope,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScopeValues',) as ScopeValues;
    
    }
    return null;
  }
}
