import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:student_booknote/widgets/appbar_widget.dart';
import 'package:student_booknote/widgets/button_option_widget.dart';
import 'package:student_booknote/widgets/button_widget.dart';
import 'package:student_booknote/widgets/text_widget.dart';
import 'package:student_booknote/widgets/textfield_widget.dart';

class AnotationView extends StatelessWidget {
  const AnotationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Aula de matemática 1'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextfieldWidget(
              hintText: 'Ex: Matemática aula 1',
              label: 'Título',
              maxLength: 15,
            ),
            const TextfieldWidget(
              label: 'Descrição',
              margin: EdgeInsets.only(top: 16),
              maxLength: 50,
            ),

            const TextWidget('Documentos'),
            ButtonOptionWidget(title: 'Adicone documentos word ou pdf', onTap: () {}),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 32),
                child: InkWell(
                  onTap: () => print('Photo!'),
                  child: DottedBorder(
                    dashPattern: const [5, 5],
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(12),
                    padding: const EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: Column(
                        children: const [
                          Icon(Icons.camera_alt),
                          TextWidget('Adicione um foto da \n galeria ou camera')
                        ],
                      )
                    ),
                  ),
                ),
              ),
            ),
            ButtonWidget(title: 'Criar anotação', onTap: () {})
          ],
        ),
      ),
    );
  }
}
