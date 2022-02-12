import 'package:flutter/material.dart';
import 'UI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Decimel to Binary App',
      home: UI()
    );
  }
}
class UI extends StatelessWidget {
  const UI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const ConvertPage();
  }
}
