import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:student_booknote/repositories/subject_repository.dart';
import 'package:student_booknote/routes/routes.dart';

final getIt = GetIt.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton<SubjectRepository>(SubjectRepository());
  await getIt<SubjectRepository>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Color(0xFF95A1AC)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Color(0xFF95A1AC)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Color(0xFF95A1AC)),
          ),
        ),
        primarySwatch: Colors.blue,
      ),
    );
  }
}