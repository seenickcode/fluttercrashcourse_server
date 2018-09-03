import 'harness/app.dart';

Future main() async {
  final harness = Harness()..install();

  test("GET /locations returns 200", () async {
    expectResponse(await harness.agent.get("/locations"), 200);
  });
}
