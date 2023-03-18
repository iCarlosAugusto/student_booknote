import 'package:flutter/material.dart';
import 'package:student_booknote/widgets/text_widget.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key, required this.title, required this.total});

  final String title;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.only(top: 80, left: 16),
      child: Container(
        padding: const EdgeInsets.only(
            bottom: 32, top: 32, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextWidget(title,
              fontSize: AvailableFontSizes.small,
              color: Colors.grey
            ),
            TextWidget(total.toString(), isFontWeight: true),
          ],
        ),
      ),
    );
  }
}