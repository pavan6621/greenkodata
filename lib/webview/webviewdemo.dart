import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class WebViewDemo extends StatefulWidget {
  @override
  _WebViewDemoState createState() => _WebViewDemoState();
}

class _WebViewDemoState extends State<WebViewDemo> {
  bool _showWebView = false;

  @override
  void initState() {
    super.initState();
    _delayedShowWebView();
  }

  void _delayedShowWebView() {
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        _showWebView = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  _showWebView 
          ?  Scaffold(
      appBar: AppBar(
              title: Text('Toolbar'),
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ) ,
      body: Center(
        child: Container(
          color: Colors.white,
          child: const WebView(
                  initialUrl: "https://www.greenkogroup.com/about.php#company",
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              
        ),
      ),
    ): Scaffold(
    
      body: Center(
        child: Container(
          color: Colors.white,
          child: const Center(
                  child: Text(
                    'Loading Page...',
                    style: TextStyle(color: Color.fromARGB(255, 7, 18, 218), fontSize: 24),
                  ),
                ),
        ),
      ),
    );
  }
}
