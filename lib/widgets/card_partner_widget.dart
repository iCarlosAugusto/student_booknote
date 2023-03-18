import 'package:flutter/material.dart';
import 'package:student_booknote/widgets/button_widget.dart';
import 'package:student_booknote/widgets/text_widget.dart';

class CardPartnersWidget extends StatelessWidget {
  const CardPartnersWidget({super.key, required this.onTap});

  final void Function() onTap; 

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 5,
      child: ListTile(
        leading: Icon(Icons.book),
        title: TextWidget('Direito'),
        subtitle: TextWidget('Prof. William'),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
