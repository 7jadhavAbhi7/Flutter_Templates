import 'package:flutter/material.dart';
import 'package:templates/Widgets/Button_And_ElvatedButton.dart';
import 'Widgets/ListView_GridView.dart';
import 'Widgets/container_sizedbox.dart';
import 'Widgets/rows_and_cols.dart';
import 'Widgets/snackbar.dart';
import 'Widgets/dismissible.dart';
import 'Widgets/Drawer.dart';
import 'Widgets/images.dart';
import 'Widgets/dropDown.dart';
import 'Widgets/alertDialog.dart';
import 'Widgets/bottomSheet.dart';
import 'Widgets/animatedText.dart';
import 'Widgets/bottomNavigation.dart';
import 'Widgets/form.dart';
import 'Widgets/Tab_bar.dart';
import 'Widgets/Response.dart';
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,primaryColor: Colors.redAccent),
      home:tabbar(),
      );

  }
}