import 'package:flutter/material.dart';
import 'package:untitled12/my_navigation.dart';
import 'package:untitled12/pages/add_item_page.dart';
import 'package:untitled12/pages/dashboard_page.dart';
import 'package:untitled12/pages/edit_item_page.dart';
import 'package:untitled12/pages/item_page.dart';
import 'package:untitled12/pages/third_page.dart';
import 'package:untitled12/vendor/desktop_material.dart';
import 'package:untitled12/vendor/desktop_layout.dart';
import 'package:untitled12/vendor/route_builder.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesktopMaterial(
      initialRoute: 'dashboard',
      routes: const [
        DesktopNavigation(
          route: 'dashboard',
          page: DashboardPage(),
        ),
        DesktopNavigation(
          route: 'item',
          page:  ItemPage(),
          children: [
            DesktopNavigation(
              route: 'add_item',
              page: AddItemPage(),
              children: [
                DesktopNavigation(
                  route: 'third_page',
                  page: ThirdPage(),
                ),
              ]
            ),
            DesktopNavigation(
              route: 'edit_item',
              page: EditItemPage(),
            ),
          ],
        ),
      ],
      child: DesktopLayout(
        navigation: const MyNavigation(),
        body: RouteBuilder(
          builder: (BuildContext context, Widget page){
            return page;
          }
        ),
      ),
    );
  }
}