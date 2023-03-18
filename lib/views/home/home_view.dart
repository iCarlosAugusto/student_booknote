import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:student_booknote/widgets/appbar_widget.dart';
import 'package:student_booknote/widgets/button_widget.dart';
import 'package:student_booknote/widgets/card_subject_widget.dart';
import 'package:student_booknote/widgets/text_widget.dart';
import 'package:student_booknote/widgets/textfield_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        elevation: 0,
        title: 'Minhas matérias',
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.filter_1_outlined))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                    itemBuilder: (_, __) => CardSubjectWidget(
                        onTap: () => context.pushNamed('/subject')),
                    separatorBuilder: (_, __) => const SizedBox(height: 16),
                    itemCount: 30),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: MediaQuery.of(context).size.height - 250,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      width: 100,
                      height: 5,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                              right: Radius.circular(10))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          const TextWidget('Criar nova matéria'),
                          const TextfieldWidget(label: 'Nome da matéria', margin: EdgeInsets.only(top: 16, bottom: 16)),
                          const TextfieldWidget(label: 'Nome do professor', margin: EdgeInsets.only(bottom: 16),),
                          ButtonWidget(title: 'Criar matéria', onTap: () {}),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
