import 'package:flutter/material.dart';
import 'package:untitled12/vendor/desktop_material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Item Page'),
            ElevatedButton(
              onPressed: (){
                DesktopMaterial.of(context).pop();
              },
              child: const Text('Back'),
            ),
            ElevatedButton(
              onPressed: (){
                DesktopMaterial.of(context).pushName(routes: ['item', 'add_item']);
              },
              child: const Text('Add Item'),
            )
          ],
        ),
      ),
    );
  }
}
