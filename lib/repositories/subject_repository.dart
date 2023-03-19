
import 'package:student_booknote/database/objectbox.g.dart';
import 'package:student_booknote/entities/subject_entity.dart';

class SubjectRepository {

  late final Store store;

  init() async {
    store = await openStore();
  }

  //Future<void> save({required String name, required String professor}) async {
    //SujectEntity subjectEntity = SujectEntity(name: name, professor: professor);
    Future<void> save({required SujectEntity subjectEntity}) async {
    Box subjectBox = store.box<SujectEntity>();
    subjectBox.put(subjectEntity);
  }

  Future<List<SujectEntity>> get() async {
    Box subjectBox = store.box<SujectEntity>();
    final subject = subjectBox.getAll();
    return subject as List<SujectEntity>;
  }

  remove() async {

  }

  update() async {

  }
}