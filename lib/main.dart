
import 'package:flutter/material.dart';
import 'webview/webviewdemo.dart';

 void main() {
  runApp( MyApp());
 }

 class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth0 Flutter Demo',
      home: WebViewDemo(),
    );
   }
  }
