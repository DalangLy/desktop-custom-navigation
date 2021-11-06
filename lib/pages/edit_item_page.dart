import 'package:flutter/material.dart';
import 'package:untitled12/vendor/desktop_material.dart';

class EditItemPage extends StatelessWidget {
  const EditItemPage({Key? key}) : super(key: key);

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
                        child: Text('Edit Item'),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text('Edit Item Page'),
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
