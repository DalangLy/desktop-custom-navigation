import 'package:flutter/material.dart';
import 'package:untitled12/vendor/desktop_material.dart';

class DesktopRouteBuilder extends StatelessWidget {
  final Function(BuildContext context, Widget page,) builder;
  const DesktopRouteBuilder({Key? key, required this.builder,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Widget>(
      builder: (BuildContext context, Widget value, Widget? child) {
        return builder(context, value,);
      },
      valueListenable: DesktopMaterial.of(context).valueNotifier,
      child: const SizedBox(),
    );
  }
}
