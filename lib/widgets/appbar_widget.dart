import 'package:flutter/material.dart';
import 'package:student_booknote/widgets/text_widget.dart';

class AppbarWidget extends StatelessWidget with PreferredSizeWidget {

  AppbarWidget({super.key, this.title = '', this.isCenterTitle, this.elevation});

  final String title;
  final bool? isCenterTitle;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      centerTitle: isCenterTitle,
      title: TextWidget(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
