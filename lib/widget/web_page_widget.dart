import 'package:flutter/material.dart';
import 'package:wanandroid/constant/color.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPageWidget extends StatefulWidget {
  final String url;

  const WebPageWidget(this.url, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WebPageWidgetState();
  }
}

class _WebPageWidgetState extends State<WebPageWidget> {
  int _progress = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
            child: LinearProgressIndicator(
              value: _progress as double,
              color: MyColors.primary,
            ),
            visible: _progress < 100),
        WebView(
          initialUrl: widget.url,
          onProgress: (progress) {
            _progress = progress;
            setState(() {});
          },
        )
      ],
    );
  }
}
