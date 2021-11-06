import 'package:flutter/material.dart';
import 'package:untitled12/vendor/desktop_material.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({Key? key}) : super(key: key);

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  final List<_MyRouteItem> routeItems = const [
    _MyRouteItem(title: 'Home', myRoutes: ['dashboard']),
    _MyRouteItem(title: 'Item', myRoutes: ['item']),
    _MyRouteItem(title: 'Add Item', myRoutes: ['item', 'add_item']),
    _MyRouteItem(title: 'Edit Item', myRoutes: ['item', 'edit_item']),
    _MyRouteItem(title: 'Third Page', myRoutes: ['item', 'add_item', 'third_page']),
    _MyRouteItem(title: 'Unknown', myRoutes: ['unknown']),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: routeItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(routeItems[index].title),
            onTap: () {
              DesktopMaterial.of(context).pushName(routes: routeItems[index].myRoutes);
            },
          );
        },
      ),
    );
  }
}

class _MyRouteItem{
  final String title;
  final List<String> myRoutes;
  const _MyRouteItem({
    required this.title,
    required this.myRoutes,
  });
}