import 'package:flutter/material.dart';
class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            DrawerHeader(padding: EdgeInsets.all(0),child:Container(
              color: Colors.orange,
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  CircleAvatar(radius: 50,
                  backgroundImage:NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=400'),)
                ,
                 SizedBox(width: 20.0,),

                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                      child: Text("Abhishek"),
                    ),
                    Container(
                      child: Text("aj027247@gmail.com"),
                    )
                  ],
                ),],
              ),


            )),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text("Folder"),
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text("Upload"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Starred"),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            Divider(),
          ListTile(
          leading: Icon(Icons.logout),
      title: Text("logout"),
    ),
          ],
        ),),
      ),
      appBar: AppBar(
        title: Text("Drawer"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child:Text("Hey there"),
        ),
      ),
    );
  }
}
