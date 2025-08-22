import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SearchesApi
void main() {
  final instance = Openapi().getSearchesApi();

  group(SearchesApi, () {
    // Get Search Results Across CDISC Library
    //
    //Future<DefaultSearchResponse> mdrSearchGet(String q, { String highlight, num start, num pageSize, String class_, String codelist, String conceptId, String core, String dataStructure, String datasetStructure, String definition, String description, String domain, String effectiveDate, String extensible, String href, String label, String measureType, String name, String preferredTerm, String product, String productGroup, String registrationStatus, String roleDescription, String sdtmTarget, String simpleDatatype, String submissionValue, String synonyms, String type, String uiHref, String valueDomain, String variableSet, String version }) async
    test('test mdrSearchGet', () async {
      // TODO
    });

    // Get Search Results Across CDISC Library
    //
    //Future<MdrSearchScopesGet200Response> mdrSearchScopesGet() async
    test('test mdrSearchScopesGet', () async {
      // TODO
    });

    // Get Search Results Limited to Scope
    //
    //Future<ScopeValues> mdrSearchScopesScopeGet(DefaultSearchScopes scope) async
    test('test mdrSearchScopesScopeGet', () async {
      // TODO
    });

  });
}
