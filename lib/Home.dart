// ignore_for_file: avoid_unnecessary_containers
import 'Color.dart';
import 'view.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//Map_View
class Mapview extends StatefulWidget {
  const Mapview({super.key});

  @override
  State<Mapview> createState() => _MapviewState();
}

class _MapviewState extends State<Mapview> {
  LatLng? currentPosition;
  final Completer<GoogleMapController> _contoller = Completer();
  Set<Marker> markers = {};
  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }

  void getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      currentPosition = LatLng(position.latitude, position.longitude);
      markers.add(
        Marker(
          markerId: const MarkerId('10'),
          position: currentPosition!,
          infoWindow: const InfoWindow(title: 'I\'m here'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GoogleMap(
          initialCameraPosition:
              CameraPosition(target: currentPosition!, zoom: 15),
          mapType: MapType.hybrid,
          markers: markers,
          onMapCreated: (GoogleMapController controller) {
            _contoller.complete(controller);
          },
        ),

        Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15.0),
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: "Recherche",
                      prefixIcon: const Icon(Icons.search)),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          child: ElevatedButton.icon(
                            icon: const Icon(
                              Icons.ev_station,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Screen2()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              fixedSize: const Size(150, 40),
                              backgroundColor: Colors.white,
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              elevation: 15,
                              shadowColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            label: const Text(
                              "Station",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          child: ElevatedButton.icon(
                            icon: const Icon(
                              Icons.house,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.white,
                                fixedSize: const Size(150, 40),
                                textStyle: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                elevation: 15,
                                shadowColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            label: const Text("Store",
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          child: ElevatedButton.icon(
                            icon: const Icon(
                              Icons.house,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.white,
                                fixedSize: const Size(150, 40),
                                textStyle: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                elevation: 15,
                                shadowColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            label: const Text("Bulding",
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        //SizedBox(height: 25),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: GlobalColor.mainColor,
            ),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble,
              color: GlobalColor.mainColor,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.storefront_outlined,
              color: GlobalColor.mainColor,
            ),
            label: 'Market',
          ),
        ],
      ),
    );
  }
}
