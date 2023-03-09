import 'package:flutter/material.dart';
import 'Color.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
              Text(
                'Restaurant',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Container(),
            ],
          ),
          //Padding(padding: EdgeInsets.all(15.0)),
          Container(
            alignment: Alignment.topCenter,
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 354,
              height: 164,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Business name",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_border)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  ),
                  Row(
                    children: [
                      Text("5.0"),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                          ],
                        ),
                      ),
                      Text('(3)')
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Adresse complete du lieu en ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: Text('Appeler'),
                        icon: Icon(
                          Icons.call,
                          color: GlobalColor.mainColor,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fixedSize: Size(121, 39),
                            primary: Colors.white,
                            onPrimary: GlobalColor.mainColor,
                            side: BorderSide(
                                color: GlobalColor.mainColor, width: 2)),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: Text('Itineraire'),
                        icon: Icon(
                          Icons.fork_right,
                          color: GlobalColor.mainColor,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fixedSize: Size(130, 39),
                            primary: Colors.white,
                            onPrimary: GlobalColor.mainColor,
                            side: BorderSide(
                                color: GlobalColor.mainColor, width: 2)),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.share,
                          color: GlobalColor.mainColor,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                          onPrimary: GlobalColor.mainColor,
                          fixedSize: Size(47, 39),
                          side: BorderSide(
                              color: GlobalColor.mainColor, width: 2),
                        ),
                      )
                    ],
                  )
                ],
              ),
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 354,
              height: 164,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Business name",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_border)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  ),
                  Row(
                    children: [
                      Text("5.0"),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                          ],
                        ),
                      ),
                      Text('(3)')
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Adresse complete du lieu en ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: Text('Appeler'),
                        icon: Icon(
                          Icons.call,
                          color: GlobalColor.mainColor,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fixedSize: Size(121, 39),
                            primary: Colors.white,
                            onPrimary: GlobalColor.mainColor,
                            side: BorderSide(
                                color: GlobalColor.mainColor, width: 2)),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: Text('Itineraire'),
                        icon: Icon(
                          Icons.fork_right,
                          color: GlobalColor.mainColor,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fixedSize: Size(130, 39),
                            primary: Colors.white,
                            onPrimary: GlobalColor.mainColor,
                            side: BorderSide(
                                color: GlobalColor.mainColor, width: 2)),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.share,
                          color: GlobalColor.mainColor,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                          onPrimary: GlobalColor.mainColor,
                          fixedSize: Size(47, 39),
                          side: BorderSide(
                              color: GlobalColor.mainColor, width: 2),
                        ),
                      )
                    ],
                  )
                ],
              ),
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 354,
              height: 164,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Business name",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_border)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  ),
                  Row(
                    children: [
                      Text("5.0"),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                            Icon(Icons.star_border, color: GlobalColor.yellow_100),
                          ],
                        ),
                      ),
                      Text('(3)')
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Adresse complete du lieu en ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: Text('Appeler'),
                        icon: Icon(
                          Icons.call,
                          color: GlobalColor.mainColor,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fixedSize: Size(121, 39),
                            primary: Colors.white,
                            onPrimary: GlobalColor.mainColor,
                            side: BorderSide(
                                color: GlobalColor.mainColor, width: 2)),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: Text('Itineraire'),
                        icon: Icon(
                          Icons.fork_right,
                          color: GlobalColor.mainColor,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fixedSize: Size(130, 39),
                            primary: Colors.white,
                            onPrimary: GlobalColor.mainColor,
                            side: BorderSide(
                                color: GlobalColor.mainColor, width: 2)),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.share,
                          color: GlobalColor.mainColor,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                          onPrimary: GlobalColor.mainColor,
                          fixedSize: Size(47, 39),
                          side: BorderSide(
                              color: GlobalColor.mainColor, width: 2),
                        ),
                      )
                    ],
                  )
                ],
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
