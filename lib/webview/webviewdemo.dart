
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewDemo extends StatefulWidget {
  @override
  _WebViewDemoState createState() => _WebViewDemoState();
}

class _WebViewDemoState extends State<WebViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(
        preferredSize: Size.fromHeight(3.0),
        child: AppBar(
          backgroundColor: Colors.black,
          title: Text(''),
        ),
      ),
      body: Center(
            child: Container(
                color: Colors.blue,
                child: const WebView(
                initialUrl: "https://www.greenkogroup.com/about.php#company",
                javascriptMode: JavascriptMode.unrestricted,
              ),
              ),
          ),
    );
  }
}
