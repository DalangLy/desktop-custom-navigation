import 'package:flutter/material.dart';
import 'package:untitled12/vendor/desktop_material.dart';

class RouteNavigationBuilder extends StatelessWidget {
  final Function(BuildContext context, List<String> selectedRoutes,) builder;
  const RouteNavigationBuilder({Key? key, required this.builder,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<String>>(
      builder: (BuildContext context, List<String> routes, Widget? child) {
        return builder(context, routes,);
      },
      valueListenable: DesktopMaterial.of(context).selectedRouteNotifier,
      child: const SizedBox(),
    );
  }
}
