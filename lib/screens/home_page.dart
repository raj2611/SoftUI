import 'package:flutter/material.dart';

import 'package:soft_ui_development/components/card.dart';

import 'package:custom_switch/custom_switch.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchValue = false;
  bool switchValue1 = true;
  List<String> names = [
    "Bed room",
    "Living room",
    "Dining room",
    "Balcony",
    "Kitchen"
  ];
  List<IconData> iconNames = [
    Icons.room,
    Icons.room_service,
    Icons.router,
    Icons.outlined_flag,
    Icons.restaurant_menu
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(244, 244, 244, 1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey.shade100,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.hardEdge,
        elevation: 50,
        color: Colors.blueGrey.shade100,
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(24, 48, 24, 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Living Room",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "1 Devices connected",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black38,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        NeuCard(
                          curveType: CurveType.concave,
                          bevel: 12,
                          decoration: NeumorphicDecoration(
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.threesixty,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              Text(
                                "45 C",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blueGrey,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        NeuCard(
                          curveType: CurveType.concave,
                          bevel: 12,
                          decoration: NeumorphicDecoration(
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.audiotrack,
                                  color: Colors.deepOrangeAccent,
                                ),
                              ),
                              Text(
                                "22 D",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 90,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: index == 0
                          ? EdgeInsets.fromLTRB(24, 8, 8, 8)
                          : EdgeInsets.all(8.0),
                      child: NeuCard(
                        curveType: CurveType.concave,
                        bevel: 6,
                        decoration: NeumorphicDecoration(
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    iconNames[index],
                                    color: Colors.black45,
                                  ),
                                  Text(
                                    names[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black45,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "${index + 1} Devices",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black45,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Text(
                  "Connected Devices",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  NeuCard(
                    curveType: CurveType.emboss,
                    bevel: 12,
                    decoration: NeumorphicDecoration(
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.lightbulb_outline),
                          Text(
                            "Light Bulb",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "IoT Bulb",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "2 C",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                  height: 50,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomSwitch(
                                      activeColor: Colors.blue,
                                      value: switchValue,
                                      onChanged: (value) async {
                                        print("VALUE : $value");

                                        setState(() {
                                          switchValue = value;
                                        });
                                      },
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  NeuCard(
                    curveType: CurveType.emboss,
                    bevel: 12,
                    decoration: NeumorphicDecoration(
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.ac_unit),
                          Text(
                            "Air conditioner",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Pansoni CS-VC27363",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "29 C",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                  height: 50,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomSwitch(
                                      activeColor: Colors.blue,
                                      value: switchValue1,
                                      onChanged: (value) async {
                                        print("VALUE : $value");

                                        setState(() {
                                          switchValue1 = value;
                                        });
                                      },
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 24, 44),
                child: NeuCard(
                  curveType: CurveType.concave,
                  bevel: 12,
                  decoration: NeumorphicDecoration(
                      borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(12),
                    child: Center(
                      child: Text(
                        "Save Power",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
