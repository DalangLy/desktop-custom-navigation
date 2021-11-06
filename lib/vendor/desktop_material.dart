import 'package:flutter/material.dart';

class DesktopMaterial extends StatefulWidget {
  final String initialRoute;
  final List<DesktopNavigation> routes;
  final Widget child;
  const DesktopMaterial({Key? key, required this.initialRoute, required this.routes, required this.child,}) : super(key: key);

  static _DesktopMaterialState of(BuildContext context){
    return context.findAncestorStateOfType<_DesktopMaterialState>()!;
  }

  @override
  _DesktopMaterialState createState() => _DesktopMaterialState();
}

class _DesktopMaterialState extends State<DesktopMaterial> {

  final ValueNotifier<Widget> valueNotifier = ValueNotifier<Widget>(const SizedBox());

  int index = 0;

  List<Widget> childrenPage = [];
  List<String> tempRoutes = [];

  void pushName({required List<String> routes,}){
    try{
      childrenPage.clear();
      tempRoutes.clear();
      tempRoutes.addAll(routes);
      index = widget.routes.indexWhere((element) => element.route.contains(tempRoutes.first));
      if(tempRoutes.length > 1){
        tempRoutes.removeAt(0);
        kk(widget.routes[index].children, tempRoutes, tempRoutes.first, 0);
      }
      valueNotifier.value = Stack(
        children: [widget.routes[index].page, ...childrenPage],
      );
    }catch(e){
      valueNotifier.value = Stack(
        children: const [
          Center(
            child: Text('Unknown'),
          ),
        ],
      );
    }
  }

  void kk(List<DesktopNavigation> xx, List<String> routes, String route, int count){
    final DesktopNavigation foundNavigation = xx.firstWhere((e) => e.route.contains(route));
    childrenPage.add(foundNavigation.page);
    print(childrenPage.length);
    if(foundNavigation.children.isNotEmpty && routes.length >= count+2){
      kk(foundNavigation.children, routes, routes[count+1], count+1);
    }
  }

  void pop(){
    if(childrenPage.isEmpty){
      return;
    }
    childrenPage.removeLast();
    valueNotifier.value = Stack(
      children: [widget.routes[index].page, ...childrenPage],
    );
  }

  @override
  void initState() {
    super.initState();

    try{
      valueNotifier.value = Stack(
        children: [
          widget.routes.firstWhere((element) => element.route.contains(widget.initialRoute)).page,
        ],
      );
    }catch(e){
      valueNotifier.value = Stack(
        children: const [
          Center(
            child: Text('Unknown Initial Route'),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: widget.child,
    );
  }
}

class DesktopNavigation{
  final String route;
  final Widget page;
  final List<DesktopNavigation> children;
  const DesktopNavigation({
    required this.route,
    required this.page,
    this.children = const [],
  });
}