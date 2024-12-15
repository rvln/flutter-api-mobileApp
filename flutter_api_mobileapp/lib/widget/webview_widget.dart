import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidget extends StatefulWidget {
  const WebViewWidget({
    super.key,
    required this.title,
    required this.url,
    required WebViewController
        controller, // Masih dibiarkan tetapi dikomentari di bawah
  });

  final String title;
  final String url;

  @override
  WebViewWidgetState createState() => WebViewWidgetState();
}

class WebViewWidgetState extends State<WebViewWidget> {
  // late final WebViewController _controller; // Variabel dikomentari sementara
  // ignore: prefer_final_fields
  int _progress = 0;

  @override
  void initState() {
    super.initState();

    // Inisialisasi WebViewController dikomentari sementara
    /*
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted) // Aktifkan JavaScript
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (progress) {
            setState(() {
              _progress = progress;
            });
          },
          onPageStarted: (url) {
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (url) {
            debugPrint('Page finished loading: $url');
          },
          onWebResourceError: (error) {
            debugPrint('Error loading page: ${error.description}');
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
    */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
      ),
      body: widget.url.isEmpty
          ? const Center(
              child: Text('Homepage is empty'),
            )
          : Stack(
              children: [
                /*
                WebViewWidget(
                  controller: _controller,
                  title: '',
                  url: '',
                ), // Widget WebView dikomentari sementara
                */
                if (_progress < 100)
                  const Positioned.fill(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
              ],
            ),
    );
  }
}
