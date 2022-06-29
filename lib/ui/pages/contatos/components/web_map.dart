import 'dart:html';
import 'package:flutter/widgets.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

Widget getMap() {
  String htmlId = "7";

  // ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
    final myLatlng = new LatLng(30.2669444, -97.7427778);

    final mapOptions = new MapOptions()
      ..zoom = 8
      ..center = new LatLng(30.2669444, -97.7427778);

    final elem = DivElement()
      ..id = htmlId
      ..style.width = "100%"
      ..style.height = "100%"
      ..style.border = 'none';

    final map = GMap(elem, mapOptions);

    Marker(MarkerOptions()
      ..position = myLatlng
      ..map = map
      ..title = 'Hello World!');

    return elem;
  });

  return HtmlElementView(viewType: htmlId);
}

class WebMap extends StatefulWidget {
  WebMap({Key? key}) : super(key: key);

  @override
  State<WebMap> createState() => WebMapState();
}

class WebMapState extends State<WebMap> {
  @override
  Widget build(BuildContext context) {
    return getMap();
  }
}
