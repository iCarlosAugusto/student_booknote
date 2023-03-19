import 'package:flutter/material.dart';
import 'package:student_booknote/widgets/text_widget.dart';

class CardSubjectWidget extends StatelessWidget {
  CardSubjectWidget({super.key, required this.onTap, required this.name, required this.professor, this.anototaionsAmount});

  String name;
  String professor;
  int? anototaionsAmount;


  final void Function() onTap; 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration:  BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(16))
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(name, isFontWeight: true),
                    TextWidget(
                      professor,
                      fontSize: AvailableFontSizes.small
                    ),
                  ],
                ),
                const Icon(Icons.chevron_right_rounded, size: 42)
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 42),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.bookmark, color: Colors.blue),
                          TextWidget(anototaionsAmount == null ? '0' : anototaionsAmount.toString()),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      TextWidget('10:00am', isFontWeight: true),
                      TextWidget('Segunda', fontSize: AvailableFontSizes.small),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
