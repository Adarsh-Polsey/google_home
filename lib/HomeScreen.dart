// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.filter,
          color: Colors.blue,
          size: 30,
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 20,
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            Text(
              "Google",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),

            // SearchBar
            Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.2),
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Container(
                        width: 50,
                        child: Row(children: [
                          Icon(
                            Icons.mic,
                            size: 20,
                            color: Colors.greenAccent,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.camera,
                            color: Colors.tealAccent,
                            size: 20,
                          )
                        ]),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(.5), fontSize: 25)),
                )),
            SizedBox(
              height: 10,
            ),
            // Circled Widget
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: functionality(
                    fline: "Translate Text",
                    sline: "WITH YOUR CAMERA",
                    icon: Icons.translate,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: functionality(
                    fline: 'Search Photo',
                    sline: 'FROM YOUR LIBRARY',
                    icon: Icons.album,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // Divider
            Divider(
              color: Colors.white.withOpacity(.5),
            ),
            // Match - ScoreBoard
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: score_board(
                    ficon: Icons.wechat,
                    sicon: Icons.telegram,
                    fscore: '3',
                    sscore: '0',
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: score_board(
                    ficon: Icons.wechat,
                    sicon: Icons.telegram,
                    fscore: '3',
                    sscore: '0',
                  ),
                ),
              ],
            ),
            // News- Bar
            ListTile(
              leading: Icon(
                Icons.work_history,
                color: Colors.white,
                size: 15,
              ),
              title: Text("Shuttle.rs - 1d",
                  style: TextStyle(color: Colors.white, fontSize: 10)),
              trailing: Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.heat_pump_rounded,
                        color: Colors.white, size: 15),
                    Icon(Icons.share, color: Colors.white, size: 15),
                    Icon(Icons.menu_rounded, color: Colors.white, size: 15),
                  ],
                ),
              ),
            ),
            // Divider
            Divider(
              color: Colors.white.withOpacity(.5),
            ),
            // News Body
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    "https://media.istockphoto.com/id/1628553826/photo/ai-or-artificial-intelligence-concept-businessman-using-computer-use-ai-to-help-business-and.jpg?s=1024x1024&w=is&k=20&c=3qRYQXANX1vXIGA3Le4Xjd7pT8kZ-7LDDbTBTH5uIQ0="),
              ),
            ),
            Text(
                "Mobile World Congress Barcelona 2024 had everything – a transparent display laptop, 3D tablets, and a power bank disguised as a smartphone",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ))
          ],
        ),
      ),
    );
  }

  Container score_board(
      {required IconData ficon,
      required IconData sicon,
      required String fscore,
      required String sscore}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white.withOpacity(.5))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(ficon, color: Color.fromARGB(255, 42, 23, 209)),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    fscore,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Text("-", style: TextStyle(color: Colors.white)),
              Row(
                children: [
                  Icon(sicon, color: Color.fromARGB(255, 42, 23, 209)),
                  SizedBox(
                    width: 4,
                  ),
                  Text(sscore, style: TextStyle(color: Colors.white))
                ],
              )
            ],
          ),
          Text("Blaaaaaaablaablaaballalllallaaaaaaa",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }

  Container functionality(
          {required String fline,
          required String sline,
          required IconData icon}) =>
      Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.2),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fline,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
                Text(sline,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 10, color: Colors.white.withOpacity(.5))),
              ],
            )
          ],
        ),
      );
}
