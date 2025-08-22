import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for StatusesApi
void main() {
  final instance = Openapi().getStatusesApi();

  group(StatusesApi, () {
    // Check health of system components
    //
    //Future<Health> healthGet() async
    test('test healthGet', () async {
      // TODO
    });

    // Set maintenance mode and message
    //
    //Future<MaintenanceBody> mdrMaintenanceGet() async
    test('test mdrMaintenanceGet', () async {
      // TODO
    });

  });
}
