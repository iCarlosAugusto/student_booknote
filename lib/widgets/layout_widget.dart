import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  final Widget child;

  const LayoutWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double width = constraints.maxWidth;
            //double height = constraints.maxHeight;
          
            if (width > 600) {
              // layout desktop
              return Center(
                child: Container(
                  constraints: const BoxConstraints(minWidth: 100, maxWidth: 500),
                  child: child
                )
              );
            } else {
              // layout mobile
              return child;
            }
          },
        ),
      ),
    );
  }
}