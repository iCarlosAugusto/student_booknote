import 'package:flutter/material.dart';
import 'package:student_booknote/widgets/text_widget.dart';

class ButtonOptionWidget extends StatelessWidget {
  const ButtonOptionWidget({super.key, required this.title, required this.onTap, this.margin});

  final String title;
  final Function() onTap;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          padding: const EdgeInsets.only(top: 12, bottom: 12, right: 12, left: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(title, fontSize: AvailableFontSizes.small, color: Colors.grey),
              const Icon(Icons.chevron_right_rounded, color: Colors.grey, size: 32)
            ],
          ),
        ),
      ),
    );
  }
}
