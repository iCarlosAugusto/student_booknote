import 'package:flutter/material.dart';
import 'package:student_booknote/widgets/card_partner_widget.dart';
import 'package:student_booknote/widgets/text_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            children: [
              const TextWidget('Minhas matérias'),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (_,__) => CardPartnersWidget(onTap: () {}),
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
        onPressed: () {},
      ),
    );
  }
}