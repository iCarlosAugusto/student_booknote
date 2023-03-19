import 'package:objectbox/objectbox.dart';
import 'package:student_booknote/entities/anotation_entity.dart';

@Entity()
class SujectEntity {

  int id = 0;
  String name;
  String professor;
  List<AnotationEntity>? anotations;

  SujectEntity({required this.name, required this.professor, this.anotations});
}