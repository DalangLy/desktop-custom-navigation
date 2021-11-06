import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  final Widget navigation;
  final Widget body;
  const DesktopLayout({Key? key, required this.navigation, required this.body,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            child: navigation,
          ),
        ),
        const VerticalDivider(),
        Expanded(
          flex: 4,
          child: Container(
            child: body,
          ),
        ),
      ],
    );
  }
}