import 'package:flutter/material.dart';
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


class MyNavigation extends StatelessWidget {
  const MyNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          ListTile(
            title: const Text('Home'),
            onTap: () {
              DesktopMaterial.of(context).pushName(routes: ['dashboard']);
            },
          ),
          ListTile(
            title: const Text('Item'),
            onTap: () {
              DesktopMaterial.of(context).pushName(routes: ['item']);
            },
          ),
          ListTile(
            title: const Text('Add Item'),
            onTap: () {
              DesktopMaterial.of(context).pushName(routes: ['item', 'add_item']);
            },
          ),
          ListTile(
            title: const Text('Edit Item'),
            onTap: () {
              DesktopMaterial.of(context).pushName(routes: ['item', 'edit_item']);
            },
          ),
          ListTile(
            title: const Text('Third Page'),
            onTap: () {
              DesktopMaterial.of(context).pushName(routes: ['item', 'add_item', 'third_page']);
            },
          ),
          ListTile(
            title: const Text('Unknown Page'),
            onTap: () {
              DesktopMaterial.of(context).pushName(routes: ['unknown']);
            },
          ),
        ],
      ),
    );
  }
}


