import 'harness/app.dart';

Future main() async {
  final harness = Harness()..install();

  test("GET /locations/[:id] returns 200", () async {
    expectResponse(await harness.agent.get("/api/v1/locations"), 200);
    expectResponse(await harness.agent.get("/api/v1/locations/1"), 200);
  });
}
