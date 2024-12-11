import '../../../../../main.dart';

class SegmentsDBService {
  static List<String> segments = [];

  static Future<void> clearSegments() async {
    segments = [];
    await box.put('segments', []);
  }

  static Future<void> addSegment(String segment) async {
    segments.add(segment);
    await box.put('segments', segments);
    print(box.get('segments'));
  }

  static Future<List<String>> getSegments() async {
    return box.get('segments') ?? [];
  }
}
