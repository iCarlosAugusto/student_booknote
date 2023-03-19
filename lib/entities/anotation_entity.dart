import 'package:objectbox/objectbox.dart';

@Entity()
class AnotationEntity {

  int id = 0;
  String name;
  String? description;
  List<String>? images;

  AnotationEntity({required this.name, this.description ,this.images});
}