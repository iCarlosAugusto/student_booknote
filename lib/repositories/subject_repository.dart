
import 'package:student_booknote/database/objectbox.g.dart';
import 'package:student_booknote/entities/subject_entity.dart';

class SubjectRepository {

  late final Store store;

  SubjectRepository(){
    _init();
  }

  _init() async {
    store = await openStore();
  }

  Future<void> save() async {
    var entityTest = SujectEntity(name: 'Matemática', professor: 'Carlos',);
    Box subjectBox = store.box<SujectEntity>();
    subjectBox.put(entityTest);
  }

  Future get() async {
    Box subjectBox = store.box<SujectEntity>();
    final subject = subjectBox.getAll();
  }

  remove() async {

  }

  update() async {

  }
}