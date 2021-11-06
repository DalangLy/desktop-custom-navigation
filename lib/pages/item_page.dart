import 'package:flutter/material.dart';
import 'package:untitled12/vendor/desktop_material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ElevatedButton(
            onPressed: null,
            child: Text(''),
          ),
          const Divider(),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  child: Row(
                    children: const [
                      ElevatedButton(
                        onPressed: null,
                        child: Text('Item'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Item Page'),
                        const SizedBox(height: 10,),
                        ElevatedButton(
                          onPressed: () {
                            DesktopMaterial.of(context).pushName(routes: ['item', 'add_item']);
                          },
                          child: const Text('Add Item'),
                        ),
                        const SizedBox(height: 10,),
                        ElevatedButton(
                          onPressed: () {
                            DesktopMaterial.of(context).pushName(routes: ['item', 'edit_item']);
                          },
                          child: const Text('Edit Item'),
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
