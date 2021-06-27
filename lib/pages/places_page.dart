import 'dart:math';

import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:latlong2/latlong.dart';

class PlacesPage extends StatefulWidget {
  @override
  _PlacesPage createState() => _PlacesPage();
}

class _PlacesPage extends State<PlacesPage> {
  //keeps track of the current page displayed
  int selectedPage = 2;

  void initState() {
    addMarkers();
    addMarkers();
    addMarkers();
    addMarkers();
    addMarkers();
    addMarkers();
    addMarkers();
    super.initState();
  }
  //List of pages

  //Sets the page when tapped
  void _onItemTapped(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(markers.last.point);
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 50),
        ReusableTitleWidget(
            title: "Near Me", fontsize: 40, color: Colors.black),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(children: [
              InkWell(
                onTap: () {
                  setState(() {
                    //displayedList = listItemsSample;
                  });
                },
                child: ReusableTagWidget(title: 'Possible Matches'),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    //displayedList =
                    //   listItemsSample.where((i) => i.myTag == true).toList();
                  });
                },
                child: ReusableTagWidget(title: 'My Friends'),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    // displayedList =
                    //     listItemsSample.where((i) => i.name == 'Football').toList();
                  });
                },
                child: ReusableTagWidget(title: 'All'),
              ),
            ]),
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.width * 1.4 - 3,
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(51.5, -0.09),
                zoom: 12.0,
              ),
              children: [
                PopupMarkerLayerWidget(
                  options: PopupMarkerLayerOptions(
                    markers: markers,
                    popupSnap: PopupSnap.mapCenter,
                    //popupController: _popupLayerController,
                    popupBuilder: (BuildContext context, Marker marker) => 
                      Container(
                        height:200,
                        width: 200,
                        child: Text("Hi"),
                      ),
                    
                    // markerRotate: widget.rotate,
                    // markerRotateAlignment: PopupMarkerLayerOptions.rotationAlignmentFor(
                    //   widget.markerAnchorAlign,
                    // ),
                    popupAnimation: PopupAnimation.fade(duration: Duration(milliseconds: 700))

                  ),
                ),
              ],
              layers: [
                TileLayerOptions(
                    urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c']),
                MarkerLayerOptions(
                  markers: markers,
                ),
              ],
            )),
      ],
    ));
  }
}

//london bounds: -0.489|51.28|0.236|51.686 min long, min lat, max long, max lat
//Sample Markers
List<Marker> markers = [
  Marker(
    width: 150,
    height: 150,
    point: LatLng(51.515, -0.1254),
    builder: (ctx) => Container(child: Icon(Icons.people, color: Colors.black, size: 35)),
  ),
  Marker(
    width: 150,
    height: 150,
    point: LatLng(51.505, -0.0304),
    builder: (ctx) => Container(child: Icon(Icons.people, color: Colors.black, size: 35)),
  ),
  Marker(
    width: 150,
    height: 150,
    point: LatLng(51.476, -0.0138),
    builder: (ctx) => Container(child: Icon(Icons.people, color: Colors.black, size: 35)),
  ),
  Marker(
    width: 150,
    height: 150,
    point: LatLng(51.468, -0.109),
    builder: (ctx) => Container(child: Icon(Icons.people, color: Colors.black, size: 35)),
  )
];
void addMarkers() {
  double random = new Random().nextDouble();
  double randomLong = -0.489 + (random * (0.236 - -0.489));
  double randomLat = 51.28 + (random * (51.686 - 51.28));
  Marker _marker = new Marker(
    width: 150,
    height: 150,
    point: LatLng(num.parse(randomLat.toStringAsFixed(3)), num.parse(randomLong.toStringAsFixed(3))),
    builder: (ctx) => Container(child: Icon(Icons.people, color: Colors.black, size: 35)),
  );
  markers.add(_marker);
}
