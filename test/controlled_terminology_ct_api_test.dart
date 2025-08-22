import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ControlledTerminologyCTApi
void main() {
  final instance = Openapi().getControlledTerminologyCTApi();

  group(ControlledTerminologyCTApi, () {
    // Get CDISC Library CT Package List
    //
    //Future<CtPackages> mdrCtPackagesGet() async
    test('test mdrCtPackagesGet', () async {
      // TODO
    });

    // Get CDISC Library CT Package Codelist
    //
    //Future<CtCodelist> mdrCtPackagesPackageCodelistsCodelistGet(String package, String codelist) async
    test('test mdrCtPackagesPackageCodelistsCodelistGet', () async {
      // TODO
    });

    // Get CDISC Library CT Package Codelist Term List
    //
    //Future<CtCodelistTerms> mdrCtPackagesPackageCodelistsCodelistTermsGet(String package, String codelist) async
    test('test mdrCtPackagesPackageCodelistsCodelistTermsGet', () async {
      // TODO
    });

    // Get CDISC Library CT Package Codelist Term
    //
    //Future<CtTerm> mdrCtPackagesPackageCodelistsCodelistTermsTermGet(String package, String codelist, String term) async
    test('test mdrCtPackagesPackageCodelistsCodelistTermsTermGet', () async {
      // TODO
    });

    // Get CDISC Library CT Package Codelist List
    //
    //Future<CtPackageCodelists> mdrCtPackagesPackageCodelistsGet(String package) async
    test('test mdrCtPackagesPackageCodelistsGet', () async {
      // TODO
    });

    // Get CDISC Library CT Package
    //
    //Future<CtPackage> mdrCtPackagesProductGet(String product) async
    test('test mdrCtPackagesProductGet', () async {
      // TODO
    });

    // Get CDISC Library Root CT Codelist
    //
    //Future<RootCtCodelist> mdrRootCtProductGroupCodelistsCodelistGet(String productGroup, String codelist) async
    test('test mdrRootCtProductGroupCodelistsCodelistGet', () async {
      // TODO
    });

    // Get CDISC Library Root CT Term
    //
    //Future<RootCtTerm> mdrRootCtProductGroupCodelistsCodelistTermsTermGet(String productGroup, String codelist, String term) async
    test('test mdrRootCtProductGroupCodelistsCodelistTermsTermGet', () async {
      // TODO
    });

  });
}
