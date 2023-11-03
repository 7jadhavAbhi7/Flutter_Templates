import 'package:flutter/material.dart';
import 'package:templates/Widgets/Button_And_ElvatedButton.dart';
import 'package:templates/Widgets/ListView_GridView.dart';
import 'package:templates/Widgets/alertDialog.dart';
import 'package:templates/Widgets/snackbar.dart';
class bottomNaviagtion extends StatefulWidget {
  const bottomNaviagtion({Key? key}) : super(key: key);

  @override
  State<bottomNaviagtion> createState() => _bottomNaviagtionState();
}

class _bottomNaviagtionState extends State<bottomNaviagtion> {
  int selectedIndex=0;
  PageController pageController=PageController();         //Create object of PageController class
  // List<Widget>widgets=[
  //   Text("Home"),
  //   Text("Store"),
  //   Text("Profile"),
  //   Text("About"),
  // ];
  void onTap(int index){     //when clicked the change of page
    setState(() {
      selectedIndex=index;
    });
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("BottomNavigation"),
      //   backgroundColor: Colors.blue,
      // ),
      body:PageView(
        controller: pageController,
        children: [
          alertDialog(),
          Button_And_ElvatedButton(),
          snackbar(),
          ListView_GridView(),



        ],

        ),
 //List and buttom icons styling
      bottomNavigationBar:BottomNavigationBar(items:const<BottomNavigationBarItem>
          [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.store),label: 'Store',),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.info),label: 'About'),
      ],
        currentIndex:selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTap,

      ),
    );
  }
}
