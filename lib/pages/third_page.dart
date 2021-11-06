import 'package:flutter/material.dart';
import 'package:untitled12/vendor/desktop_material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

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
                      const SizedBox(width: 10,),
                      ElevatedButton(
                        onPressed: () {
                          DesktopMaterial.of(context).pushName(routes: ['item']);
                        },
                        child: const Text('Item'),
                      ),
                      const SizedBox(width: 10,),
                      ElevatedButton(
                        onPressed: () {
                          DesktopMaterial.of(context).pushName(routes: ['item', 'add_item']);
                        },
                        child: const Text('Add Item'),
                      ),
                      const SizedBox(width: 10,),
                      const ElevatedButton(
                        onPressed: null,
                        child: Text('Third Item'),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text('Third Page'),
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
