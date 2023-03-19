import 'package:objectbox/objectbox.dart';
import 'package:student_booknote/entities/anotation_entity.dart';

@Entity()
class SubjectEntity {

  int id = 0;
  String name;
  String professor;
  List<AnotationEntity>? anotations;

  SubjectEntity({required this.name, required this.professor, this.anotations});
}