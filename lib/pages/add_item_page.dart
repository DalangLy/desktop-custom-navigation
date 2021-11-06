import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/vendor/desktop_material.dart';

class AddItemPage extends StatelessWidget {
  const AddItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              DesktopMaterial.of(context).pop();
            },
            child: const Text('Back'),
          ),
          const Divider(),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          DesktopMaterial.of(context).pushName(routes: ['item']);
                        },
                        child: const Text('Item'),
                      ),
                      const SizedBox(width: 10,),
                      const ElevatedButton(
                        onPressed: null,
                        child: Text('Add Item'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Add Item Page'),
                        const SizedBox(height: 10,),
                        ElevatedButton(
                          onPressed: () {
                            DesktopMaterial.of(context).pushName(routes: ['item', 'add_item', 'third_page']);
                          },
                          child: const Text('Third Page'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
