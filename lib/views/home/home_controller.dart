import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:student_booknote/entities/subject_entity.dart';
import 'package:student_booknote/main.dart';
import 'package:student_booknote/repositories/subject_repository.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  
  _HomeControllerBase() {
    getSubjects();
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController subjectNameTextfieldController = TextEditingController();
  TextEditingController subjectProfessorTextfieldController = TextEditingController();

  @observable
  ObservableList<SujectEntity> subjects = ObservableList<SujectEntity>();

  @action
  Future<void> createSubject() async {
    SujectEntity subjectEntity = SujectEntity(
      name: subjectNameTextfieldController.text,
      professor: subjectProfessorTextfieldController.text
    );
    subjects.add(subjectEntity);
    await getIt<SubjectRepository>().save(subjectEntity: subjectEntity);
  }
  
  @action
  Future<void> getSubjects() async {
    var result = await getIt<SubjectRepository>().get();
    subjects.addAll(result);
  }
}