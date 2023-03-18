import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:student_booknote/widgets/appbar_widget.dart';
import 'package:student_booknote/widgets/card_subject_widget.dart';

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
            onPressed: () {}, 
            icon: const Icon(Icons.filter_1_outlined)
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemBuilder: (_,__) => CardSubjectWidget(
                    onTap: () => context.pushNamed('/subject')
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