import 'package:flutter/material.dart';
import 'package:untitled12/vendor/desktop_material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Third Page'),
            ElevatedButton(
              onPressed: (){
                DesktopMaterial.of(context).pop();
              },
              child: const Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}