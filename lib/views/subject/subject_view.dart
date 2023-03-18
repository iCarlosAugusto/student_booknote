import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:student_booknote/widgets/appbar_widget.dart';
import 'package:student_booknote/widgets/card_anotation_widget.dart';

class SubjectView extends StatelessWidget {
  const SubjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        elevation: 0,
        title: 'Anotações de Matemática',
      ),
      body: SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (_,__) => CardAnotationWidget(
                onTap: () => print('')
              ),
              separatorBuilder: (_,__) => const SizedBox(height: 16),
              itemCount: 30
            ),
          )
        ],
      ),
        ),
      ),
            floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
        },
      ),
    );
  }
}