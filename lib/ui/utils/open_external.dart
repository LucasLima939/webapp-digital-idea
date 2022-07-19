// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

void openExternal(String url, {bool isNewTab = true}) =>
    js.context.callMethod('open', [url, isNewTab ? '_blank' : '_self']);
