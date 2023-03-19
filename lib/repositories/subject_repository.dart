
import 'package:student_booknote/database/objectbox.g.dart';
import 'package:student_booknote/entities/subject_entity.dart';

class SubjectRepository {

  late final Store store;

  init() async {
    store = await openStore();
  }

    Future<void> save({required SubjectEntity subjectEntity}) async {
    Box subjectBox = store.box<SubjectEntity>();
    subjectBox.put(subjectEntity);
  }

  Future<List<SubjectEntity>> get() async {
    Box subjectBox = store.box<SubjectEntity>();
    final subject = subjectBox.getAll();
    return subject as List<SubjectEntity>;
  }

  remove() async {

  }

  update() async {

  }
}