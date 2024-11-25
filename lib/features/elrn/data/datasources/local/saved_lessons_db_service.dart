


import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';

import '../../../../../main.dart';

class SavedLessonsDBService {
  final List<dynamic> _savedLessons = box.get('savedLessons', defaultValue: <VideoLessonEntity>[]);

  Future<void> putSavedLessons(List<VideoLessonEntity> savedLessons) async {
    _savedLessons.clear();
    _savedLessons.addAll(savedLessons);
    await box.put('savedLessons', _savedLessons);
  }


  List getSavedLessons()  {
    return _savedLessons;
  }


  Future<void> deleteSavedLessons() async {
    _savedLessons.clear();
    await box.put('savedLessons', _savedLessons);
  }

  Future<int> getSavedLessonsCount() async {
    return _savedLessons.length;
  }

  Future<void> deleteSavedLessonById(String id) async {
    _savedLessons.removeWhere((element) => element.id == id);
    await box.put('savedLessons', _savedLessons);
  }

  //remove saved lesson
Future<void> removeSavedLessonById(String id) async {
    for (int i = 0; i < _savedLessons.length; i++) {
      if (_savedLessons[i].id == id) {
        _savedLessons.removeAt(i);
      }
    }
    await box.put('savedLessons', _savedLessons);
  }

  Future<void> addSavedLesson(VideoLessonEntity savedLesson) async {
    _savedLessons.add(savedLesson);
    await box.put('savedLessons', _savedLessons);
  }
}
