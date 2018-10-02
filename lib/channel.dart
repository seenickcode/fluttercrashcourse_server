import 'fluttercrashcourse_server.dart';
import 'locations_controller.dart';

class FluttercrashcourseServerChannel extends ApplicationChannel {
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();

    router.route('/api/v1/locations/[:id]').link(() => LocationsController());

    return router;
  }
}
