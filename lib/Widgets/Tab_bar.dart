import 'package:flutter/material.dart';
class tabbar extends StatelessWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
        appBar: AppBar(
          title: Text("Tab_Bar"),
          backgroundColor:Colors.blue,centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.contact_mail),
              text: 'Contact',
            ),
            Tab(
              icon: Icon(Icons.person),
              text: 'Contact',
            ),
            Tab(
              icon: Icon(Icons.message),
              text: 'Contact',
            ),
            Tab(
              icon: Icon(Icons.share),
              text: 'Contact',
            )
          ]),),
        body: TabBarView(
          children: [
            Center(
              child: Container(
                child: Text("Hello your contact mails are"
                    "1.Abhishek Jadhav",style: TextStyle(
                  fontWeight:FontWeight.w800,
                  fontSize:12,

                ),),
              ),
            ),
            Center(
              child: Container(
                child: Text("Here are different person",style: TextStyle(
                  fontWeight:FontWeight.w800,
                  fontSize:12,),
              ),
            ),),
            Center(
              child: Container(
                child: Text("Here you can find messages",style: TextStyle(
    fontWeight:FontWeight.w800,
    fontSize:12,),
              ),
            ),),
            Center(
              child: Container(
                child: Text("Here you can share any thing",style: TextStyle(
    fontWeight:FontWeight.w800,
    fontSize:12,),
              ),
            ),),
          ],
        )

    ),);

  }
}
