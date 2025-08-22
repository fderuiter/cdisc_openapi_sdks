import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MeasuresApi
void main() {
  final instance = Openapi().getMeasuresApi();

  group(MeasuresApi, () {
    // Get QRS Product
    //
    //Future<QrsProduct> mdrQrsMeasureVersionGet(String measure, String version) async
    test('test mdrQrsMeasureVersionGet', () async {
      // TODO
    });

    // Get QRS Item List
    //
    //Future<QrsItems> mdrQrsMeasureVersionItemsGet(String measure, String version) async
    test('test mdrQrsMeasureVersionItemsGet', () async {
      // TODO
    });

    // Get QRS Item
    //
    //Future<QrsItem> mdrQrsMeasureVersionItemsItemGet(String measure, String version, String item) async
    test('test mdrQrsMeasureVersionItemsItemGet', () async {
      // TODO
    });

    // Get QRS Response Group List
    //
    //Future<QrsResponsegroups> mdrQrsMeasureVersionResponsegroupsGet(String measure, String version) async
    test('test mdrQrsMeasureVersionResponsegroupsGet', () async {
      // TODO
    });

    // Get QRS Response Group
    //
    //Future<QrsResponsegroup> mdrQrsMeasureVersionResponsegroupsResponsegroupGet(String measure, String version, String responsegroup) async
    test('test mdrQrsMeasureVersionResponsegroupsResponsegroupGet', () async {
      // TODO
    });

  });
}
