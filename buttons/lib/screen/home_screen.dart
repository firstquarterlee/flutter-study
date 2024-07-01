import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){},
              child: Text('ElevatedButton'),
            ),
            OutlinedButton( //d있어야됨
              onPressed: (){},
              child: Text('OutlineButton'),
            ),
            TextButton(
              onPressed: (){},
              child: Text('TextButton'),
            ),
          ],
        ),
      ),
    );
  }
}
