import 'dart:math';

import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:latlong2/latlong.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class PlacesPage extends StatefulWidget {
  @override
  _PlacesPage createState() => _PlacesPage();
}

class _PlacesPage extends State<PlacesPage> {
  //keeps track of the current page displayed
  int selectedPage = 2;
  BuildContext dialogContext;

  void initState() {
    addMarkers();
    addMarkers();
    addMarkers();
    addMarkers();
    addMarkers();
    addMarkers();
    addMarkers();
    markerAll = markers;
    super.initState();
  }

  //List of pages
  @override
  Widget build(BuildContext context) {
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
                    markers = markerAll;
                    //displayedList = listItemsSample;
                  });
                },
                child: ReusableTagWidget(title: 'All'),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    markers = markerFriends;
                  });
                },
                child: ReusableTagWidget(title: 'My Friends'),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    // displayedList =
                    //     listItemsSample.where((i) => i.name == 'Football').toList();
                  });
                },
                child: ReusableTagWidget(title: 'Matches'),
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
                  onTap: (_) {
                    //Navigator.of(context, rootNavigator: true).pop(context);
                  }),
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

final _random = new Random();
//london bounds: -0.489|51.28|0.236|51.686 min long, min lat, max long, max lat
//Sample Markers
List<String> sampleCategories = [
  'Sports',
  'Frisbee',
  'Politics',
  'Eating',
  'Cooking',
  'Art',
  'Futsal',
  'Fine dining',
  'Making monies',
  'Hiking',
  'Cricket',
  'Drums',
  'Forex',
  'Shopping'
];
List<Marker> markerFriends = []; //marker for friends
List<Marker> markerAll = []; //all markers
List<Marker> markers = [
  Marker(
      width: 150,
      height: 150,
      point: LatLng(51.505, -0.0304),
      builder: (ctx) => Container(
              child: IconButton(
            icon: Icon(Icons.people, size: 35),
            color: Colors.black,
            onPressed: () {
              showDialog(
                context: ctx,
                builder: (BuildContext context) {
                  return ReusablePopupFriendsWidget(
                      name: 'John Doe',
                      tags: List.generate(
                              4,
                              (_) => sampleCategories[
                                  _random.nextInt(sampleCategories.length)])
                          .toSet()
                          .toList());
                },
              ).then((val) {
                if (val == 'true') {
                  var _marker =
                      addCustomMarker(LatLng(51.505, -0.0304), 'John Doe');
                  markerFriends.add(_marker);
                }
              });
            },
          ))),
  Marker(
      width: 150,
      height: 150,
      point: LatLng(51.476, -0.0138),
      builder: (ctx) => Container(
              child: IconButton(
            icon: Icon(Icons.people, size: 35),
            color: Colors.black,
            onPressed: () {
              showDialog(
                context: ctx,
                builder: (BuildContext context) {
                  return ReusablePopupFriendsWidget(
                      name: 'Dana lee',
                      tags: List.generate(
                              4,
                              (_) => sampleCategories[
                                  _random.nextInt(sampleCategories.length)])
                          .toSet()
                          .toList());
                },
              ).then((val) {
                if (val == 'true') {
                  var _marker =
                      addCustomMarker(LatLng(51.476, -0.0138), 'Dana lee');
                  markerFriends.add(_marker);
                }
              });
            },
          ))),
  Marker(
      width: 150,
      height: 150,
      point: LatLng(51.468, -0.109),
      builder: (ctx) => Container(
              child: IconButton(
            icon: Icon(Icons.people, size: 35),
            color: Colors.black,
            onPressed: () {
              showDialog(
                context: ctx,
                builder: (BuildContext context) {
                  return ReusablePopupFriendsWidget(
                      name: 'Bobby',
                      tags: List.generate(
                              4,
                              (_) => sampleCategories[
                                  _random.nextInt(sampleCategories.length)])
                          .toSet()
                          .toList());
                },
              ).then((val) {
                if (val == 'true') {
                  var _marker =
                      addCustomMarker(LatLng(51.468, -0.109), 'Bobby');
                  markerFriends.add(_marker);
                }
              });
            },
          )))
];

Marker addCustomMarker(LatLng coord, String name) {
  Marker _marker = new Marker(
      width: 150,
      height: 150,
      point: coord,
      builder: (ctx) => Container(
              child: IconButton(
            icon: Icon(Icons.people, size: 35),
            color: Colors.black,
            onPressed: () {
              showDialog(
                context: ctx,
                builder: (BuildContext context) {
                  return ReusablePopupFriendsWidget(
                      name: name,
                      tags: List.generate(
                              4,
                              (_) => sampleCategories[
                                  _random.nextInt(sampleCategories.length)])
                          .toSet()
                          .toList());
                },
              );
            },
          )));
  return _marker;
}

void addMarkers() {
  double random = new Random().nextDouble();
  double randomLong = -0.489 + (random * (0.236 - -0.489));
  double randomLat = 51.28 + (random * (51.686 - 51.28));
  Marker _marker = new Marker(
      width: 150,
      height: 150,
      point: LatLng(num.parse(randomLat.toStringAsFixed(3)),
          num.parse(randomLong.toStringAsFixed(3))),
      builder: (ctx) => Container(
              child: IconButton(
            icon: Icon(Icons.people, size: 35),
            color: Colors.black,
            onPressed: () {
              showDialog(
                context: ctx,
                builder: (BuildContext context) {
                  return ReusablePopupFriendsWidget(
                      name: loremIpsum(words: 2),
                      tags: List.generate(
                              4,
                              (_) => sampleCategories[
                                  _random.nextInt(sampleCategories.length)])
                          .toSet()
                          .toList());
                },
              ).then((val) {
                if (val == 'true') {
                  markerFriends.add(addCustomMarker(
                      LatLng(randomLat, randomLong), loremIpsum(words: 2)));
                }
              });
            },
          )));

  markers.add(_marker);
}

//Basic friend structure
class Friend {
  final name;
  final tags;
  bool myFriend;
  Friend({this.name, this.tags, this.myFriend});
}
