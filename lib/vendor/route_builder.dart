import 'package:flutter/material.dart';
import 'package:untitled12/vendor/desktop_material.dart';

class RouteBuilder extends StatefulWidget {
  final Function(BuildContext context, Widget page,) builder;
  const RouteBuilder({Key? key, required this.builder,}) : super(key: key);

  @override
  State<RouteBuilder> createState() => _RouteBuilderState();
}

class _RouteBuilderState extends State<RouteBuilder> {

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Widget>(
      builder: (BuildContext context, Widget value, Widget? child) {
        return widget.builder(context, value,);
      },
      valueListenable: DesktopMaterial.of(context).valueNotifier,
      child: const SizedBox(),
    );
  }
}