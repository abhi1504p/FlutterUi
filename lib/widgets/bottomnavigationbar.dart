import 'package:container_and_sizedbox/widgets/alertWidget.dart';
import 'package:container_and_sizedbox/widgets/dismissible.dart';
import 'package:container_and_sizedbox/widgets/imagewidgets.dart';
import 'package:container_and_sizedbox/widgets/list_gird.dart';
import 'package:flutter/material.dart';

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key});

  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  int selectedindex = 0;
  PageController pageController=PageController();
 /* List<Widget> widgets = [
    Text("Home"),
    Text("Search"),
    Text("Add"),
    Text("Profile"),
  ];*/
  void ontapped(int index){
    setState(() {
      selectedindex=index;
      pageController.jumpToPage(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text("Bottom_Navigation_Bar"),
        backgroundColor: Colors.purple,
      ),*/
     /* body: Center(child: widgets.elementAt(selectedindex)),*/
      body:PageView(controller: pageController,
      children: [
       Alertbox(),
        Imagewidget(),
        ListAndGrid(),
        dismissibes(),





      ],),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.white70,
        onTap: ontapped,

      ),
    );
  }
}
