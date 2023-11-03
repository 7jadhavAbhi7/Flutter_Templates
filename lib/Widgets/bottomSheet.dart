import 'package:flutter/material.dart';
class bottomdsheet extends StatefulWidget {
  const bottomdsheet({Key? key}) : super(key: key);

  @override
  State<bottomdsheet> createState() => _bottomdsheetState();
}

class _bottomdsheetState extends State<bottomdsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                elevation:0,
                enableDrag: true,
                isDismissible: false,
                context: context,
                builder: (context){
              return Column(
                children: [
                  ListTile(title:
                    Text("Abhishek Jadhav"),
                    subtitle: Text("Third Year student"),

                  ),
                  ListTile(
                    title:Text("Abhishek Jadhav"),
                    subtitle: Text("Third Year student"),

                  ),
                  ListTile(
                    title:Text("Abhishek Jadhav"),
                    subtitle: Text("Third Year student"),

                  )
                ],
              );
                });
          },
          child: Text("Hit it"),
        ),

      ),
    );
  }
}
