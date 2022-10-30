import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HtmlLinkWebview extends StatelessWidget {
  final String webUrl;
  const HtmlLinkWebview({Key? key, required this.webUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            initialUrl: webUrl,

            // 'https://www.ikstopnu.nl/chat',
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ],
      ),
    );
  }
}
