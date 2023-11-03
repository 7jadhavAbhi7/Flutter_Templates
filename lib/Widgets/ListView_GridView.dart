import 'package:flutter/material.dart';

class ListView_GridView extends StatefulWidget {
  const ListView_GridView({Key? key}) : super(key: key);

  @override
  State<ListView_GridView> createState() => _ListView_GridViewState();
}

class _ListView_GridViewState extends State<ListView_GridView> {
  List<String>fruits=['Orage','Apple','Banana'];
  Map fruits_person={
    'fruits':['Orange','Apple','Banana'],
    'names':['Abhishek','Pramav','Vishvaraj']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView and GridView"),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context,index){
        //     return Card(
        //       child: ListTile(
        //         leading: Icon(Icons.person),
        //         onTap:(){ print(fruits[index]);},
        //         title: Text(fruits[index]),
        //         subtitle: Text(fruits_person['names'][index]),
        //       ),
        //     );
        //   }
        // child: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 20,
        //     childAspectRatio: 2/3,
        //   ),
        //   children: [
        //     Center(
        //       child: Card(
        //         child: Text('Orange'),
        //       ),
        //     ),
        //     Center(
        //       child: Card(
        //         child: Text('Orange'),
        //       ),
        //     ),
        //     Center(
        //       child: Card(
        //         child: Text('Orange'),
        //       ),
        //     ),
        //     Center(
        //       child: Card(
        //         child: Text('Orange'),
        //       ),
        //     ),
        //   ],
        // ),
        // child: ListView(
        //   children: [
        //   Card(
        //     child: ListTile(
        //       title: Text("Red"),
        //       subtitle: Text("Abhishek"),),
        //     color: Colors.green,
        //   ),
        //   Card(
        //     child: ListTile(
        //       title: Text("Red"),
        //       subtitle: Text("Abhishek"),
        //     ),
        //   ),
        //   Card(
          //     child: ListTile(
        //       title: Text("Red"),
        //       subtitle: Text("Abhishek"),
        //     ),
        //   )
        //
        // ],),

        // child: GridView.builder(
        //     itemCount: fruits.length,
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3,),
        //
        //     itemBuilder: (context, index) {
        //       return Card(
        //         child: Center(
        //           child: Text(fruits[index]),
        //         ),
        //       );
        //     }
        // ),

      ),
    )
    ;
  }

  }
