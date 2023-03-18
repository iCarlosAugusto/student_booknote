import 'package:objectbox/objectbox.dart';

@Entity()
class SujectEntity {

  int id = 0;
  String name;
  String professor;

  SujectEntity({required this.name, required this.professor});
}