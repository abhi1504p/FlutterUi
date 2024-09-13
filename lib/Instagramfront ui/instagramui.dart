import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InstagramUi extends StatelessWidget {
  const InstagramUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Wanda",
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                height: 180,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 43,
                        backgroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/87/c3/1a/87c31a87112f9b55806d5ccd241edc34.jpg",
                        ),
                      ),
                    )),
                    Positioned(
                        top: 120,
                        left: 24,
                        child: Text(
                          "Wanda.S",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 145,
                        left: 24,
                        child: Text(
                          "Photographer/New York",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      top: 20,
                      left: 180,
                      child: data("160", " Posts"),
                    ),
                    Positioned(
                      top: 20,
                      left: 250,
                      child: data("5k", " Followers"),
                    ),
                    Positioned(
                      top: 20,
                      left: 330,
                      child: data("5k", " Following"),
                    ),
                    Positioned(
                      width: 117,
                      right: 70,
                      bottom: 55,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.blue, width: 33),
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 99,
                      bottom: 59,
                      child: Text(
                        "Follow",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 54,
                      child: Icon(
                        Icons.arrow_circle_down_rounded,
                        color: Colors.blue,
                        size: 35,
                      ),
                    )
                  ],
                )),
            Container(
              height: 170,
              width: double.infinity,
              child: circle(),
            ),
            Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.ondemand_video_rounded,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.accessibility_rounded,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.account_circle_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.favorite,
                      size: 40,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.blue,
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.red,
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.blue,
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.red,
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.blue,
                        ),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget data(String text1, String text2) {
    return Row(children: [
      Column(
        children: [
          Text(
            text1,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            text2,
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14),
          )
        ],
      ),
    ]);
  }

  Widget circle() {
    return ListView.builder(
      itemCount: 2,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Column(
              children: [
                Container(
                  height: 130,
                  width: 90,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://t3.ftcdn.net/jpg/07/73/25/66/360_F_773256620_SHGFqlhPdFTsHfOYl4wAiCejFKJOe066.jpg"),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "New",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 20),
                )
              ],
            ),
            SizedBox(
              width: 18,
            ),
            Column(
              children: [
                Container(
                  height: 130,
                  width: 90,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/11/25/23/15/moon-1859616_640.jpg"),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Moon",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 20),
                )
              ],
            ),
            SizedBox(
              width: 18,
            ),
            Column(
              children: [
                Container(
                  height: 130,
                  width: 90,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/originals/c0/d6/25/c0d625a7ef5bc800380b76186f4f1e06.jpg"),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Lion",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 20),
                )
              ],
            ),
            SizedBox(
              width: 18,
            ),
            Column(
              children: [
                Container(
                  height: 130,
                  width: 90,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://img.cdn-pictorem.com/uploads/collection/I/IB5PAB9RBI/900_Anime_3_1608090028.8527.jpg"),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Naruto",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 20),
                )
              ],
            ),
            SizedBox(
              width: 18,
            ),
            Column(
              children: [
                Container(
                  height: 130,
                  width: 90,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      "https://imgs2.goodsmileus.com/image/cache/data/productimages/Nendoroids/HinataHyugaRerelease/01_2204281107407836-1200x1200.jpg",
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Hinata",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 20),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
