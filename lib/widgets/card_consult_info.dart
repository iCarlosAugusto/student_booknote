import 'package:flutter/material.dart';
import 'package:student_booknote/widgets/button_widget.dart';
import 'package:student_booknote/widgets/text_widget.dart';

class CardConsultInfo extends StatelessWidget {
  const CardConsultInfo({super.key, required this.onTap});

  final void Function() onTap; 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.If2Auxkyn15mpgevtb6R2gHaEK%26pid%3DApi&f=1&ipt=90e78a8830f8a5d5800d6af39f451e932c78198ca6b56b24dd8ae566451e8693&ipo=images'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextWidget('Personal',
                        isFontWeight: true, color: Colors.white),
                    TextWidget(
                      '30m | High Intensity | Indoor/Outdoor',
                      fontSize: AvailableFontSizes.small,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 42),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonWidget(
                    title: 'Detalhes',
                    onTap: () {},
                    icon: Icons.add,
                    color: Colors.orange,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
