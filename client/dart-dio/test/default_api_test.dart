import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    // Get Information About CDISC Library
    //
    //Future<About> mdrAboutGet() async
    test('test mdrAboutGet', () async {
      // TODO
    });

    // Get CDISC Library Last Updated
    //
    //Future<Lastupdated> mdrLastupdatedGet() async
    test('test mdrLastupdatedGet', () async {
      // TODO
    });

    // Get CDISC Library Product Group Data Analysis
    //
    //Future<ProductgroupDataAnalysis> mdrProductsDataAnalysisGet() async
    test('test mdrProductsDataAnalysisGet', () async {
      // TODO
    });

    // Get CDISC Library Product Group Data Collection
    //
    //Future<ProductgroupDataCollection> mdrProductsDataCollectionGet() async
    test('test mdrProductsDataCollectionGet', () async {
      // TODO
    });

    // Get CDISC Library Product Group Data Tabulation
    //
    //Future<ProductgroupDataTabulation> mdrProductsDataTabulationGet() async
    test('test mdrProductsDataTabulationGet', () async {
      // TODO
    });

    // Get CDISC Library Products
    //
    //Future<Products> mdrProductsGet() async
    test('test mdrProductsGet', () async {
      // TODO
    });

    // Get CDISC Library Product Group QRS
    //
    //Future<ProductgroupQrs> mdrProductsMeasuresGet() async
    test('test mdrProductsMeasuresGet', () async {
      // TODO
    });

    // Get CDISC Library Product Group Terminology
    //
    //Future<ProductgroupTerminology> mdrProductsTerminologyGet() async
    test('test mdrProductsTerminologyGet', () async {
      // TODO
    });

  });
}
