//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://library.cdisc.org/api', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'About':
          return About.fromJson(value);
        case 'AboutLinks':
          return AboutLinks.fromJson(value);
        case 'AboutRef':
          return AboutRef.fromJson(value);
        case 'AdamDatastructure':
          return AdamDatastructure.fromJson(value);
        case 'AdamDatastructureLinks':
          return AdamDatastructureLinks.fromJson(value);
        case 'AdamDatastructureRef':
          return AdamDatastructureRef.fromJson(value);
        case 'AdamDatastructureRefElement':
          return AdamDatastructureRefElement.fromJson(value);
        case 'AdamDatastructureVariables':
          return AdamDatastructureVariables.fromJson(value);
        case 'AdamDatastructureVariablesLinks':
          return AdamDatastructureVariablesLinks.fromJson(value);
        case 'AdamDatastructureVariablesRef':
          return AdamDatastructureVariablesRef.fromJson(value);
        case 'AdamDatastructureVarsets':
          return AdamDatastructureVarsets.fromJson(value);
        case 'AdamDatastructureVarsetsLinks':
          return AdamDatastructureVarsetsLinks.fromJson(value);
        case 'AdamDatastructureVarsetsRef':
          return AdamDatastructureVarsetsRef.fromJson(value);
        case 'AdamProduct':
          return AdamProduct.fromJson(value);
        case 'AdamProductDatastructures':
          return AdamProductDatastructures.fromJson(value);
        case 'AdamProductDatastructuresLinks':
          return AdamProductDatastructuresLinks.fromJson(value);
        case 'AdamProductDatastructuresRef':
          return AdamProductDatastructuresRef.fromJson(value);
        case 'AdamProductLinks':
          return AdamProductLinks.fromJson(value);
        case 'AdamProductRef':
          return AdamProductRef.fromJson(value);
        case 'AdamProductRefElement':
          return AdamProductRefElement.fromJson(value);
        case 'AdamVariable':
          return AdamVariable.fromJson(value);
        case 'AdamVariableLinks':
          return AdamVariableLinks.fromJson(value);
        case 'AdamVariableRef':
          return AdamVariableRef.fromJson(value);
        case 'AdamVariableRefElement':
          return AdamVariableRefElement.fromJson(value);
        case 'AdamVarset':
          return AdamVarset.fromJson(value);
        case 'AdamVarsetLinks':
          return AdamVarsetLinks.fromJson(value);
        case 'AdamVarsetRef':
          return AdamVarsetRef.fromJson(value);
        case 'AdamVarsetRefElement':
          return AdamVarsetRefElement.fromJson(value);
        case 'CdashClass':
          return CdashClass.fromJson(value);
        case 'CdashClassDomains':
          return CdashClassDomains.fromJson(value);
        case 'CdashClassDomainsLinks':
          return CdashClassDomainsLinks.fromJson(value);
        case 'CdashClassDomainsRef':
          return CdashClassDomainsRef.fromJson(value);
        case 'CdashClassField':
          return CdashClassField.fromJson(value);
        case 'CdashClassFieldLinks':
          return CdashClassFieldLinks.fromJson(value);
        case 'CdashClassFieldRef':
          return CdashClassFieldRef.fromJson(value);
        case 'CdashClassFieldRefVersion':
          return CdashClassFieldRefVersion.fromJson(value);
        case 'CdashClassLinks':
          return CdashClassLinks.fromJson(value);
        case 'CdashClassRef':
          return CdashClassRef.fromJson(value);
        case 'CdashClassRefElement':
          return CdashClassRefElement.fromJson(value);
        case 'CdashDomain':
          return CdashDomain.fromJson(value);
        case 'CdashDomainField':
          return CdashDomainField.fromJson(value);
        case 'CdashDomainFieldLinks':
          return CdashDomainFieldLinks.fromJson(value);
        case 'CdashDomainFieldRef':
          return CdashDomainFieldRef.fromJson(value);
        case 'CdashDomainFieldRefElement':
          return CdashDomainFieldRefElement.fromJson(value);
        case 'CdashDomainFieldRefVersion':
          return CdashDomainFieldRefVersion.fromJson(value);
        case 'CdashDomainFields':
          return CdashDomainFields.fromJson(value);
        case 'CdashDomainFieldsLinks':
          return CdashDomainFieldsLinks.fromJson(value);
        case 'CdashDomainFieldsRef':
          return CdashDomainFieldsRef.fromJson(value);
        case 'CdashDomainLinks':
          return CdashDomainLinks.fromJson(value);
        case 'CdashDomainRef':
          return CdashDomainRef.fromJson(value);
        case 'CdashDomainRefElement':
          return CdashDomainRefElement.fromJson(value);
        case 'CdashProduct':
          return CdashProduct.fromJson(value);
        case 'CdashProductClasses':
          return CdashProductClasses.fromJson(value);
        case 'CdashProductClassesLinks':
          return CdashProductClassesLinks.fromJson(value);
        case 'CdashProductClassesRef':
          return CdashProductClassesRef.fromJson(value);
        case 'CdashProductDomains':
          return CdashProductDomains.fromJson(value);
        case 'CdashProductDomainsLinks':
          return CdashProductDomainsLinks.fromJson(value);
        case 'CdashProductDomainsRef':
          return CdashProductDomainsRef.fromJson(value);
        case 'CdashProductLinks':
          return CdashProductLinks.fromJson(value);
        case 'CdashProductRef':
          return CdashProductRef.fromJson(value);
        case 'CdashProductRefElement':
          return CdashProductRefElement.fromJson(value);
        case 'CdashigClass':
          return CdashigClass.fromJson(value);
        case 'CdashigClassDomains':
          return CdashigClassDomains.fromJson(value);
        case 'CdashigClassDomainsLinks':
          return CdashigClassDomainsLinks.fromJson(value);
        case 'CdashigClassDomainsRef':
          return CdashigClassDomainsRef.fromJson(value);
        case 'CdashigClassLinks':
          return CdashigClassLinks.fromJson(value);
        case 'CdashigClassRef':
          return CdashigClassRef.fromJson(value);
        case 'CdashigClassRefElement':
          return CdashigClassRefElement.fromJson(value);
        case 'CdashigClassRefSubclass':
          return CdashigClassRefSubclass.fromJson(value);
        case 'CdashigClassScenarios':
          return CdashigClassScenarios.fromJson(value);
        case 'CdashigClassScenariosLinks':
          return CdashigClassScenariosLinks.fromJson(value);
        case 'CdashigClassScenariosRef':
          return CdashigClassScenariosRef.fromJson(value);
        case 'CdashigDomain':
          return CdashigDomain.fromJson(value);
        case 'CdashigDomainField':
          return CdashigDomainField.fromJson(value);
        case 'CdashigDomainFieldLinks':
          return CdashigDomainFieldLinks.fromJson(value);
        case 'CdashigDomainFieldRef':
          return CdashigDomainFieldRef.fromJson(value);
        case 'CdashigDomainFieldRefElement':
          return CdashigDomainFieldRefElement.fromJson(value);
        case 'CdashigDomainFieldRefVersion':
          return CdashigDomainFieldRefVersion.fromJson(value);
        case 'CdashigDomainFields':
          return CdashigDomainFields.fromJson(value);
        case 'CdashigDomainFieldsLinks':
          return CdashigDomainFieldsLinks.fromJson(value);
        case 'CdashigDomainFieldsRef':
          return CdashigDomainFieldsRef.fromJson(value);
        case 'CdashigDomainLinks':
          return CdashigDomainLinks.fromJson(value);
        case 'CdashigDomainRef':
          return CdashigDomainRef.fromJson(value);
        case 'CdashigDomainRefElement':
          return CdashigDomainRefElement.fromJson(value);
        case 'CdashigProduct':
          return CdashigProduct.fromJson(value);
        case 'CdashigProductClasses':
          return CdashigProductClasses.fromJson(value);
        case 'CdashigProductClassesLinks':
          return CdashigProductClassesLinks.fromJson(value);
        case 'CdashigProductClassesRef':
          return CdashigProductClassesRef.fromJson(value);
        case 'CdashigProductDomains':
          return CdashigProductDomains.fromJson(value);
        case 'CdashigProductDomainsLinks':
          return CdashigProductDomainsLinks.fromJson(value);
        case 'CdashigProductDomainsRef':
          return CdashigProductDomainsRef.fromJson(value);
        case 'CdashigProductLinks':
          return CdashigProductLinks.fromJson(value);
        case 'CdashigProductRef':
          return CdashigProductRef.fromJson(value);
        case 'CdashigProductRefElement':
          return CdashigProductRefElement.fromJson(value);
        case 'CdashigProductScenarios':
          return CdashigProductScenarios.fromJson(value);
        case 'CdashigProductScenariosLinks':
          return CdashigProductScenariosLinks.fromJson(value);
        case 'CdashigProductScenariosRef':
          return CdashigProductScenariosRef.fromJson(value);
        case 'CdashigScenario':
          return CdashigScenario.fromJson(value);
        case 'CdashigScenarioField':
          return CdashigScenarioField.fromJson(value);
        case 'CdashigScenarioFieldLinks':
          return CdashigScenarioFieldLinks.fromJson(value);
        case 'CdashigScenarioFieldRef':
          return CdashigScenarioFieldRef.fromJson(value);
        case 'CdashigScenarioFieldRefElement':
          return CdashigScenarioFieldRefElement.fromJson(value);
        case 'CdashigScenarioFieldRefVersion':
          return CdashigScenarioFieldRefVersion.fromJson(value);
        case 'CdashigScenarioFields':
          return CdashigScenarioFields.fromJson(value);
        case 'CdashigScenarioFieldsLinks':
          return CdashigScenarioFieldsLinks.fromJson(value);
        case 'CdashigScenarioFieldsRef':
          return CdashigScenarioFieldsRef.fromJson(value);
        case 'CdashigScenarioLinks':
          return CdashigScenarioLinks.fromJson(value);
        case 'CdashigScenarioRef':
          return CdashigScenarioRef.fromJson(value);
        case 'CdashigScenarioRefElement':
          return CdashigScenarioRefElement.fromJson(value);
        case 'CtCodelist':
          return CtCodelist.fromJson(value);
        case 'CtCodelistLinks':
          return CtCodelistLinks.fromJson(value);
        case 'CtCodelistRef':
          return CtCodelistRef.fromJson(value);
        case 'CtCodelistRefElement':
          return CtCodelistRefElement.fromJson(value);
        case 'CtCodelistRefVersion':
          return CtCodelistRefVersion.fromJson(value);
        case 'CtCodelistTerms':
          return CtCodelistTerms.fromJson(value);
        case 'CtCodelistTermsLinks':
          return CtCodelistTermsLinks.fromJson(value);
        case 'CtCodelistTermsRef':
          return CtCodelistTermsRef.fromJson(value);
        case 'CtPackage':
          return CtPackage.fromJson(value);
        case 'CtPackageCodelists':
          return CtPackageCodelists.fromJson(value);
        case 'CtPackageCodelistsLinks':
          return CtPackageCodelistsLinks.fromJson(value);
        case 'CtPackageCodelistsRef':
          return CtPackageCodelistsRef.fromJson(value);
        case 'CtPackageLinks':
          return CtPackageLinks.fromJson(value);
        case 'CtPackageRef':
          return CtPackageRef.fromJson(value);
        case 'CtPackageRefElement':
          return CtPackageRefElement.fromJson(value);
        case 'CtPackageTerm':
          return CtPackageTerm.fromJson(value);
        case 'CtPackages':
          return CtPackages.fromJson(value);
        case 'CtPackagesLinks':
          return CtPackagesLinks.fromJson(value);
        case 'CtPackagesRef':
          return CtPackagesRef.fromJson(value);
        case 'CtTerm':
          return CtTerm.fromJson(value);
        case 'CtTermLinks':
          return CtTermLinks.fromJson(value);
        case 'CtTermRef':
          return CtTermRef.fromJson(value);
        case 'CtTermRefElement':
          return CtTermRefElement.fromJson(value);
        case 'CtTermRefVersion':
          return CtTermRefVersion.fromJson(value);
        case 'DefaultErrorResponse':
          return DefaultErrorResponse.fromJson(value);
        case 'DefaultSearchResponse':
          return DefaultSearchResponse.fromJson(value);
        case 'DefaultSearchResponseHitsInner':
          return DefaultSearchResponseHitsInner.fromJson(value);
        case 'DefaultSearchScopes':
          return DefaultSearchScopesTypeTransformer().decode(value);
        case 'ExportAdamDatastructuresRow':
          return ExportAdamDatastructuresRow.fromJson(value);
        case 'ExportAdamDatastructuresTable':
          return ExportAdamDatastructuresTable.fromJson(value);
        case 'ExportAdamVariablesRow':
          return ExportAdamVariablesRow.fromJson(value);
        case 'ExportAdamVariablesTable':
          return ExportAdamVariablesTable.fromJson(value);
        case 'ExportAdamWorkbook':
          return ExportAdamWorkbook.fromJson(value);
        case 'ExportCdashClassVariablesRow':
          return ExportCdashClassVariablesRow.fromJson(value);
        case 'ExportCdashDomainVariablesRow':
          return ExportCdashDomainVariablesRow.fromJson(value);
        case 'ExportCdashTable':
          return ExportCdashTable.fromJson(value);
        case 'ExportCdashigDomainVariablesRow':
          return ExportCdashigDomainVariablesRow.fromJson(value);
        case 'ExportCdashigScenarioVariablesRow':
          return ExportCdashigScenarioVariablesRow.fromJson(value);
        case 'ExportCdashigTable':
          return ExportCdashigTable.fromJson(value);
        case 'ExportCtCodelist':
          return ExportCtCodelist.fromJson(value);
        case 'ExportCtTable':
          return ExportCtTable.fromJson(value);
        case 'ExportCtTerm':
          return ExportCtTerm.fromJson(value);
        case 'ExportQrsCsvItemsRow':
          return ExportQrsCsvItemsRow.fromJson(value);
        case 'ExportQrsGeneral':
          return ExportQrsGeneral.fromJson(value);
        case 'ExportQrsItemsTable':
          return ExportQrsItemsTable.fromJson(value);
        case 'ExportQrsResponses':
          return ExportQrsResponses.fromJson(value);
        case 'ExportQrsWorkbook':
          return ExportQrsWorkbook.fromJson(value);
        case 'ExportQrsWorkbookItemsRow':
          return ExportQrsWorkbookItemsRow.fromJson(value);
        case 'ExportSdtmClassVariablesRow':
          return ExportSdtmClassVariablesRow.fromJson(value);
        case 'ExportSdtmDatasetVariablesRow':
          return ExportSdtmDatasetVariablesRow.fromJson(value);
        case 'ExportSdtmDatasetsRow':
          return ExportSdtmDatasetsRow.fromJson(value);
        case 'ExportSdtmDatasetsTable':
          return ExportSdtmDatasetsTable.fromJson(value);
        case 'ExportSdtmVariablesTable':
          return ExportSdtmVariablesTable.fromJson(value);
        case 'ExportSdtmWorkbook':
          return ExportSdtmWorkbook.fromJson(value);
        case 'ExportSdtmigDatasetsRow':
          return ExportSdtmigDatasetsRow.fromJson(value);
        case 'ExportSdtmigDatasetsTable':
          return ExportSdtmigDatasetsTable.fromJson(value);
        case 'ExportSdtmigVariablesRow':
          return ExportSdtmigVariablesRow.fromJson(value);
        case 'ExportSdtmigVariablesTable':
          return ExportSdtmigVariablesTable.fromJson(value);
        case 'ExportSdtmigWorkbook':
          return ExportSdtmigWorkbook.fromJson(value);
        case 'ExportSendigDatasetsRow':
          return ExportSendigDatasetsRow.fromJson(value);
        case 'ExportSendigDatasetsTable':
          return ExportSendigDatasetsTable.fromJson(value);
        case 'ExportSendigVariablesRow':
          return ExportSendigVariablesRow.fromJson(value);
        case 'ExportSendigVariablesTable':
          return ExportSendigVariablesTable.fromJson(value);
        case 'ExportSendigWorkbook':
          return ExportSendigWorkbook.fromJson(value);
        case 'Health':
          return Health.fromJson(value);
        case 'Lastupdated':
          return Lastupdated.fromJson(value);
        case 'LastupdatedLinks':
          return LastupdatedLinks.fromJson(value);
        case 'LastupdatedRef':
          return LastupdatedRef.fromJson(value);
        case 'MaintenanceBody':
          return MaintenanceBody.fromJson(value);
        case 'MdrSearchScopesGet200Response':
          return MdrSearchScopesGet200Response.fromJson(value);
        case 'ProductgroupDataAnalysis':
          return ProductgroupDataAnalysis.fromJson(value);
        case 'ProductgroupDataAnalysisLinks':
          return ProductgroupDataAnalysisLinks.fromJson(value);
        case 'ProductgroupDataCollection':
          return ProductgroupDataCollection.fromJson(value);
        case 'ProductgroupDataCollectionLinks':
          return ProductgroupDataCollectionLinks.fromJson(value);
        case 'ProductgroupDataTabulation':
          return ProductgroupDataTabulation.fromJson(value);
        case 'ProductgroupDataTabulationLinks':
          return ProductgroupDataTabulationLinks.fromJson(value);
        case 'ProductgroupQrs':
          return ProductgroupQrs.fromJson(value);
        case 'ProductgroupQrsLinks':
          return ProductgroupQrsLinks.fromJson(value);
        case 'ProductgroupRef':
          return ProductgroupRef.fromJson(value);
        case 'ProductgroupTerminology':
          return ProductgroupTerminology.fromJson(value);
        case 'ProductgroupTerminologyLinks':
          return ProductgroupTerminologyLinks.fromJson(value);
        case 'Products':
          return Products.fromJson(value);
        case 'ProductsLinks':
          return ProductsLinks.fromJson(value);
        case 'ProductsRef':
          return ProductsRef.fromJson(value);
        case 'QrsItem':
          return QrsItem.fromJson(value);
        case 'QrsItemLinks':
          return QrsItemLinks.fromJson(value);
        case 'QrsItemRefElement':
          return QrsItemRefElement.fromJson(value);
        case 'QrsItems':
          return QrsItems.fromJson(value);
        case 'QrsItemsLinks':
          return QrsItemsLinks.fromJson(value);
        case 'QrsItemsRef':
          return QrsItemsRef.fromJson(value);
        case 'QrsProduct':
          return QrsProduct.fromJson(value);
        case 'QrsProductLinks':
          return QrsProductLinks.fromJson(value);
        case 'QrsProductRef':
          return QrsProductRef.fromJson(value);
        case 'QrsRefElement':
          return QrsRefElement.fromJson(value);
        case 'QrsResponseLinks':
          return QrsResponseLinks.fromJson(value);
        case 'QrsResponsegroup':
          return QrsResponsegroup.fromJson(value);
        case 'QrsResponsegroupLinks':
          return QrsResponsegroupLinks.fromJson(value);
        case 'QrsResponsegroupRef':
          return QrsResponsegroupRef.fromJson(value);
        case 'QrsResponsegroupRefElement':
          return QrsResponsegroupRefElement.fromJson(value);
        case 'QrsResponsegroups':
          return QrsResponsegroups.fromJson(value);
        case 'QrsResponsegroupsLinks':
          return QrsResponsegroupsLinks.fromJson(value);
        case 'QrsResponsegroupsRef':
          return QrsResponsegroupsRef.fromJson(value);
        case 'QrsResponses':
          return QrsResponses.fromJson(value);
        case 'RootCdashClassField':
          return RootCdashClassField.fromJson(value);
        case 'RootCdashClassFieldLinks':
          return RootCdashClassFieldLinks.fromJson(value);
        case 'RootCdashClassFieldRef':
          return RootCdashClassFieldRef.fromJson(value);
        case 'RootCdashDomainField':
          return RootCdashDomainField.fromJson(value);
        case 'RootCdashDomainFieldLinks':
          return RootCdashDomainFieldLinks.fromJson(value);
        case 'RootCdashDomainFieldRef':
          return RootCdashDomainFieldRef.fromJson(value);
        case 'RootCdashigDomainField':
          return RootCdashigDomainField.fromJson(value);
        case 'RootCdashigDomainFieldLinks':
          return RootCdashigDomainFieldLinks.fromJson(value);
        case 'RootCdashigDomainFieldRef':
          return RootCdashigDomainFieldRef.fromJson(value);
        case 'RootCdashigScenarioField':
          return RootCdashigScenarioField.fromJson(value);
        case 'RootCdashigScenarioFieldLinks':
          return RootCdashigScenarioFieldLinks.fromJson(value);
        case 'RootCdashigScenarioFieldRef':
          return RootCdashigScenarioFieldRef.fromJson(value);
        case 'RootCtCodelist':
          return RootCtCodelist.fromJson(value);
        case 'RootCtCodelistLinks':
          return RootCtCodelistLinks.fromJson(value);
        case 'RootCtCodelistRef':
          return RootCtCodelistRef.fromJson(value);
        case 'RootCtCodelistRefElement':
          return RootCtCodelistRefElement.fromJson(value);
        case 'RootCtTerm':
          return RootCtTerm.fromJson(value);
        case 'RootCtTermLinks':
          return RootCtTermLinks.fromJson(value);
        case 'RootCtTermRef':
          return RootCtTermRef.fromJson(value);
        case 'RootSdtmClassVariable':
          return RootSdtmClassVariable.fromJson(value);
        case 'RootSdtmClassVariableLinks':
          return RootSdtmClassVariableLinks.fromJson(value);
        case 'RootSdtmClassVariableRef':
          return RootSdtmClassVariableRef.fromJson(value);
        case 'RootSdtmDatasetVariable':
          return RootSdtmDatasetVariable.fromJson(value);
        case 'RootSdtmDatasetVariableLinks':
          return RootSdtmDatasetVariableLinks.fromJson(value);
        case 'RootSdtmDatasetVariableRef':
          return RootSdtmDatasetVariableRef.fromJson(value);
        case 'RootSdtmigDatasetVariable':
          return RootSdtmigDatasetVariable.fromJson(value);
        case 'RootSdtmigDatasetVariableLinks':
          return RootSdtmigDatasetVariableLinks.fromJson(value);
        case 'RootSdtmigDatasetVariableRef':
          return RootSdtmigDatasetVariableRef.fromJson(value);
        case 'RootSendigDatasetVariable':
          return RootSendigDatasetVariable.fromJson(value);
        case 'RootSendigDatasetVariableLinks':
          return RootSendigDatasetVariableLinks.fromJson(value);
        case 'RootSendigDatasetVariableRef':
          return RootSendigDatasetVariableRef.fromJson(value);
        case 'ScopeValues':
          return ScopeValues.fromJson(value);
        case 'SdtmClass':
          return SdtmClass.fromJson(value);
        case 'SdtmClassDatasets':
          return SdtmClassDatasets.fromJson(value);
        case 'SdtmClassDatasetsLinks':
          return SdtmClassDatasetsLinks.fromJson(value);
        case 'SdtmClassDatasetsRef':
          return SdtmClassDatasetsRef.fromJson(value);
        case 'SdtmClassLinks':
          return SdtmClassLinks.fromJson(value);
        case 'SdtmClassRef':
          return SdtmClassRef.fromJson(value);
        case 'SdtmClassRefElement':
          return SdtmClassRefElement.fromJson(value);
        case 'SdtmClassRefSubclass':
          return SdtmClassRefSubclass.fromJson(value);
        case 'SdtmClassVariable':
          return SdtmClassVariable.fromJson(value);
        case 'SdtmClassVariableLinks':
          return SdtmClassVariableLinks.fromJson(value);
        case 'SdtmClassVariableRef':
          return SdtmClassVariableRef.fromJson(value);
        case 'SdtmClassVariableRefElement':
          return SdtmClassVariableRefElement.fromJson(value);
        case 'SdtmClassVariableRefQualifies':
          return SdtmClassVariableRefQualifies.fromJson(value);
        case 'SdtmClassVariableRefTarget':
          return SdtmClassVariableRefTarget.fromJson(value);
        case 'SdtmClassVariableRefVersion':
          return SdtmClassVariableRefVersion.fromJson(value);
        case 'SdtmClassVariables':
          return SdtmClassVariables.fromJson(value);
        case 'SdtmClassVariablesLinks':
          return SdtmClassVariablesLinks.fromJson(value);
        case 'SdtmClassVariablesRef':
          return SdtmClassVariablesRef.fromJson(value);
        case 'SdtmClasses':
          return SdtmClasses.fromJson(value);
        case 'SdtmClassesLinks':
          return SdtmClassesLinks.fromJson(value);
        case 'SdtmClassesRef':
          return SdtmClassesRef.fromJson(value);
        case 'SdtmDataset':
          return SdtmDataset.fromJson(value);
        case 'SdtmDatasetLinks':
          return SdtmDatasetLinks.fromJson(value);
        case 'SdtmDatasetRef':
          return SdtmDatasetRef.fromJson(value);
        case 'SdtmDatasetRefElement':
          return SdtmDatasetRefElement.fromJson(value);
        case 'SdtmDatasetVariable':
          return SdtmDatasetVariable.fromJson(value);
        case 'SdtmDatasetVariableLinks':
          return SdtmDatasetVariableLinks.fromJson(value);
        case 'SdtmDatasetVariableRef':
          return SdtmDatasetVariableRef.fromJson(value);
        case 'SdtmDatasetVariableRefElement':
          return SdtmDatasetVariableRefElement.fromJson(value);
        case 'SdtmDatasetVariableRefTarget':
          return SdtmDatasetVariableRefTarget.fromJson(value);
        case 'SdtmDatasetVariableRefVersion':
          return SdtmDatasetVariableRefVersion.fromJson(value);
        case 'SdtmDatasetVariables':
          return SdtmDatasetVariables.fromJson(value);
        case 'SdtmDatasetVariablesLinks':
          return SdtmDatasetVariablesLinks.fromJson(value);
        case 'SdtmDatasetVariablesRef':
          return SdtmDatasetVariablesRef.fromJson(value);
        case 'SdtmDatasets':
          return SdtmDatasets.fromJson(value);
        case 'SdtmDatasetsLinks':
          return SdtmDatasetsLinks.fromJson(value);
        case 'SdtmDatasetsRef':
          return SdtmDatasetsRef.fromJson(value);
        case 'SdtmProduct':
          return SdtmProduct.fromJson(value);
        case 'SdtmProductLinks':
          return SdtmProductLinks.fromJson(value);
        case 'SdtmProductRef':
          return SdtmProductRef.fromJson(value);
        case 'SdtmProductRefElement':
          return SdtmProductRefElement.fromJson(value);
        case 'SdtmigClass':
          return SdtmigClass.fromJson(value);
        case 'SdtmigClassDatasets':
          return SdtmigClassDatasets.fromJson(value);
        case 'SdtmigClassDatasetsLinks':
          return SdtmigClassDatasetsLinks.fromJson(value);
        case 'SdtmigClassDatasetsRef':
          return SdtmigClassDatasetsRef.fromJson(value);
        case 'SdtmigClassLinks':
          return SdtmigClassLinks.fromJson(value);
        case 'SdtmigClassRef':
          return SdtmigClassRef.fromJson(value);
        case 'SdtmigClassRefElement':
          return SdtmigClassRefElement.fromJson(value);
        case 'SdtmigClassRefSubclass':
          return SdtmigClassRefSubclass.fromJson(value);
        case 'SdtmigClasses':
          return SdtmigClasses.fromJson(value);
        case 'SdtmigClassesLinks':
          return SdtmigClassesLinks.fromJson(value);
        case 'SdtmigClassesRef':
          return SdtmigClassesRef.fromJson(value);
        case 'SdtmigDataset':
          return SdtmigDataset.fromJson(value);
        case 'SdtmigDatasetLinks':
          return SdtmigDatasetLinks.fromJson(value);
        case 'SdtmigDatasetRef':
          return SdtmigDatasetRef.fromJson(value);
        case 'SdtmigDatasetRefElement':
          return SdtmigDatasetRefElement.fromJson(value);
        case 'SdtmigDatasetVariable':
          return SdtmigDatasetVariable.fromJson(value);
        case 'SdtmigDatasetVariableLinks':
          return SdtmigDatasetVariableLinks.fromJson(value);
        case 'SdtmigDatasetVariableRef':
          return SdtmigDatasetVariableRef.fromJson(value);
        case 'SdtmigDatasetVariableRefElement':
          return SdtmigDatasetVariableRefElement.fromJson(value);
        case 'SdtmigDatasetVariableRefTarget':
          return SdtmigDatasetVariableRefTarget.fromJson(value);
        case 'SdtmigDatasetVariableRefVersion':
          return SdtmigDatasetVariableRefVersion.fromJson(value);
        case 'SdtmigDatasetVariables':
          return SdtmigDatasetVariables.fromJson(value);
        case 'SdtmigDatasetVariablesLinks':
          return SdtmigDatasetVariablesLinks.fromJson(value);
        case 'SdtmigDatasetVariablesRef':
          return SdtmigDatasetVariablesRef.fromJson(value);
        case 'SdtmigDatasets':
          return SdtmigDatasets.fromJson(value);
        case 'SdtmigDatasetsLinks':
          return SdtmigDatasetsLinks.fromJson(value);
        case 'SdtmigDatasetsRef':
          return SdtmigDatasetsRef.fromJson(value);
        case 'SdtmigProduct':
          return SdtmigProduct.fromJson(value);
        case 'SdtmigProductLinks':
          return SdtmigProductLinks.fromJson(value);
        case 'SdtmigProductRef':
          return SdtmigProductRef.fromJson(value);
        case 'SdtmigProductRefElement':
          return SdtmigProductRefElement.fromJson(value);
        case 'SendigClass':
          return SendigClass.fromJson(value);
        case 'SendigClassDatasets':
          return SendigClassDatasets.fromJson(value);
        case 'SendigClassDatasetsLinks':
          return SendigClassDatasetsLinks.fromJson(value);
        case 'SendigClassDatasetsRef':
          return SendigClassDatasetsRef.fromJson(value);
        case 'SendigClassLinks':
          return SendigClassLinks.fromJson(value);
        case 'SendigClassRef':
          return SendigClassRef.fromJson(value);
        case 'SendigClassRefElement':
          return SendigClassRefElement.fromJson(value);
        case 'SendigClassRefSubclass':
          return SendigClassRefSubclass.fromJson(value);
        case 'SendigClasses':
          return SendigClasses.fromJson(value);
        case 'SendigClassesLinks':
          return SendigClassesLinks.fromJson(value);
        case 'SendigClassesRef':
          return SendigClassesRef.fromJson(value);
        case 'SendigDataset':
          return SendigDataset.fromJson(value);
        case 'SendigDatasetLinks':
          return SendigDatasetLinks.fromJson(value);
        case 'SendigDatasetRef':
          return SendigDatasetRef.fromJson(value);
        case 'SendigDatasetRefElement':
          return SendigDatasetRefElement.fromJson(value);
        case 'SendigDatasetVariable':
          return SendigDatasetVariable.fromJson(value);
        case 'SendigDatasetVariableLinks':
          return SendigDatasetVariableLinks.fromJson(value);
        case 'SendigDatasetVariableRef':
          return SendigDatasetVariableRef.fromJson(value);
        case 'SendigDatasetVariableRefElement':
          return SendigDatasetVariableRefElement.fromJson(value);
        case 'SendigDatasetVariableRefVersion':
          return SendigDatasetVariableRefVersion.fromJson(value);
        case 'SendigDatasetVariables':
          return SendigDatasetVariables.fromJson(value);
        case 'SendigDatasetVariablesLinks':
          return SendigDatasetVariablesLinks.fromJson(value);
        case 'SendigDatasetVariablesRef':
          return SendigDatasetVariablesRef.fromJson(value);
        case 'SendigDatasets':
          return SendigDatasets.fromJson(value);
        case 'SendigDatasetsLinks':
          return SendigDatasetsLinks.fromJson(value);
        case 'SendigDatasetsRef':
          return SendigDatasetsRef.fromJson(value);
        case 'SendigProduct':
          return SendigProduct.fromJson(value);
        case 'SendigProductLinks':
          return SendigProductLinks.fromJson(value);
        case 'SendigProductRef':
          return SendigProductRef.fromJson(value);
        case 'SendigProductRefElement':
          return SendigProductRefElement.fromJson(value);
        case 'XmlAbout':
          return XmlAbout.fromJson(value);
        case 'XmlAdamDatastructure':
          return XmlAdamDatastructure.fromJson(value);
        case 'XmlAdamDatastructureVariables':
          return XmlAdamDatastructureVariables.fromJson(value);
        case 'XmlAdamDatastructureVarsets':
          return XmlAdamDatastructureVarsets.fromJson(value);
        case 'XmlAdamProduct':
          return XmlAdamProduct.fromJson(value);
        case 'XmlAdamProductDatastructures':
          return XmlAdamProductDatastructures.fromJson(value);
        case 'XmlAdamVariable':
          return XmlAdamVariable.fromJson(value);
        case 'XmlAdamVarset':
          return XmlAdamVarset.fromJson(value);
        case 'XmlCdashClass':
          return XmlCdashClass.fromJson(value);
        case 'XmlCdashClassDomains':
          return XmlCdashClassDomains.fromJson(value);
        case 'XmlCdashClassField':
          return XmlCdashClassField.fromJson(value);
        case 'XmlCdashDomain':
          return XmlCdashDomain.fromJson(value);
        case 'XmlCdashDomainField':
          return XmlCdashDomainField.fromJson(value);
        case 'XmlCdashDomainFields':
          return XmlCdashDomainFields.fromJson(value);
        case 'XmlCdashProduct':
          return XmlCdashProduct.fromJson(value);
        case 'XmlCdashProductClasses':
          return XmlCdashProductClasses.fromJson(value);
        case 'XmlCdashProductDomains':
          return XmlCdashProductDomains.fromJson(value);
        case 'XmlCdashigClass':
          return XmlCdashigClass.fromJson(value);
        case 'XmlCdashigClassDomains':
          return XmlCdashigClassDomains.fromJson(value);
        case 'XmlCdashigClassScenarios':
          return XmlCdashigClassScenarios.fromJson(value);
        case 'XmlCdashigDomain':
          return XmlCdashigDomain.fromJson(value);
        case 'XmlCdashigDomainField':
          return XmlCdashigDomainField.fromJson(value);
        case 'XmlCdashigDomainFields':
          return XmlCdashigDomainFields.fromJson(value);
        case 'XmlCdashigProduct':
          return XmlCdashigProduct.fromJson(value);
        case 'XmlCdashigProductClasses':
          return XmlCdashigProductClasses.fromJson(value);
        case 'XmlCdashigProductDomains':
          return XmlCdashigProductDomains.fromJson(value);
        case 'XmlCdashigProductScenarios':
          return XmlCdashigProductScenarios.fromJson(value);
        case 'XmlCdashigScenario':
          return XmlCdashigScenario.fromJson(value);
        case 'XmlCdashigScenarioField':
          return XmlCdashigScenarioField.fromJson(value);
        case 'XmlCdashigScenarioFields':
          return XmlCdashigScenarioFields.fromJson(value);
        case 'XmlCtCodelist':
          return XmlCtCodelist.fromJson(value);
        case 'XmlCtCodelistTerms':
          return XmlCtCodelistTerms.fromJson(value);
        case 'XmlCtPackage':
          return XmlCtPackage.fromJson(value);
        case 'XmlCtPackageCodelists':
          return XmlCtPackageCodelists.fromJson(value);
        case 'XmlCtPackages':
          return XmlCtPackages.fromJson(value);
        case 'XmlCtTerm':
          return XmlCtTerm.fromJson(value);
        case 'XmlLastupdated':
          return XmlLastupdated.fromJson(value);
        case 'XmlProductgroupDataAnalysis':
          return XmlProductgroupDataAnalysis.fromJson(value);
        case 'XmlProductgroupDataCollection':
          return XmlProductgroupDataCollection.fromJson(value);
        case 'XmlProductgroupDataTabulation':
          return XmlProductgroupDataTabulation.fromJson(value);
        case 'XmlProductgroupTerminology':
          return XmlProductgroupTerminology.fromJson(value);
        case 'XmlProducts':
          return XmlProducts.fromJson(value);
        case 'XmlQrsItem':
          return XmlQrsItem.fromJson(value);
        case 'XmlQrsItems':
          return XmlQrsItems.fromJson(value);
        case 'XmlQrsProduct':
          return XmlQrsProduct.fromJson(value);
        case 'XmlQrsResponsegroup':
          return XmlQrsResponsegroup.fromJson(value);
        case 'XmlQrsResponsegroups':
          return XmlQrsResponsegroups.fromJson(value);
        case 'XmlRootCdashClassField':
          return XmlRootCdashClassField.fromJson(value);
        case 'XmlRootCdashDomainField':
          return XmlRootCdashDomainField.fromJson(value);
        case 'XmlRootCdashigDomainField':
          return XmlRootCdashigDomainField.fromJson(value);
        case 'XmlRootCdashigScenarioField':
          return XmlRootCdashigScenarioField.fromJson(value);
        case 'XmlRootCtCodelist':
          return XmlRootCtCodelist.fromJson(value);
        case 'XmlRootCtTerm':
          return XmlRootCtTerm.fromJson(value);
        case 'XmlRootSdtmClassVariable':
          return XmlRootSdtmClassVariable.fromJson(value);
        case 'XmlRootSdtmDatasetVariable':
          return XmlRootSdtmDatasetVariable.fromJson(value);
        case 'XmlRootSdtmigDatasetVariable':
          return XmlRootSdtmigDatasetVariable.fromJson(value);
        case 'XmlRootSendigDatasetVariable':
          return XmlRootSendigDatasetVariable.fromJson(value);
        case 'XmlSdtmClass':
          return XmlSdtmClass.fromJson(value);
        case 'XmlSdtmClassDatasets':
          return XmlSdtmClassDatasets.fromJson(value);
        case 'XmlSdtmClassVariable':
          return XmlSdtmClassVariable.fromJson(value);
        case 'XmlSdtmClassVariables':
          return XmlSdtmClassVariables.fromJson(value);
        case 'XmlSdtmClasses':
          return XmlSdtmClasses.fromJson(value);
        case 'XmlSdtmDataset':
          return XmlSdtmDataset.fromJson(value);
        case 'XmlSdtmDatasetVariable':
          return XmlSdtmDatasetVariable.fromJson(value);
        case 'XmlSdtmDatasetVariables':
          return XmlSdtmDatasetVariables.fromJson(value);
        case 'XmlSdtmDatasets':
          return XmlSdtmDatasets.fromJson(value);
        case 'XmlSdtmProduct':
          return XmlSdtmProduct.fromJson(value);
        case 'XmlSdtmigClass':
          return XmlSdtmigClass.fromJson(value);
        case 'XmlSdtmigClassDatasets':
          return XmlSdtmigClassDatasets.fromJson(value);
        case 'XmlSdtmigClasses':
          return XmlSdtmigClasses.fromJson(value);
        case 'XmlSdtmigDataset':
          return XmlSdtmigDataset.fromJson(value);
        case 'XmlSdtmigDatasetVariable':
          return XmlSdtmigDatasetVariable.fromJson(value);
        case 'XmlSdtmigDatasetVariables':
          return XmlSdtmigDatasetVariables.fromJson(value);
        case 'XmlSdtmigDatasets':
          return XmlSdtmigDatasets.fromJson(value);
        case 'XmlSdtmigProduct':
          return XmlSdtmigProduct.fromJson(value);
        case 'XmlSendigClass':
          return XmlSendigClass.fromJson(value);
        case 'XmlSendigClassDatasets':
          return XmlSendigClassDatasets.fromJson(value);
        case 'XmlSendigClasses':
          return XmlSendigClasses.fromJson(value);
        case 'XmlSendigDataset':
          return XmlSendigDataset.fromJson(value);
        case 'XmlSendigDatasetVariable':
          return XmlSendigDatasetVariable.fromJson(value);
        case 'XmlSendigDatasetVariables':
          return XmlSendigDatasetVariables.fromJson(value);
        case 'XmlSendigDatasets':
          return XmlSendigDatasets.fromJson(value);
        case 'XmlSendigProduct':
          return XmlSendigProduct.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
