import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:templates/Widgets/Response.dart';
import 'package:templates/Widgets/dropDown.dart';
class form1 extends StatefulWidget {
  const form1({Key? key}) : super(key: key);

  @override
  State<form1> createState() => _form1State();
}

class _form1State extends State<form1> {
  final _formKey=GlobalKey<FormState>();    //Manage form state
  String FirstName='';
  String LastName='';
  String Email='';
  String Password='';

  //Function
  trySubmit(){
    final isvalid=_formKey.currentState!.validate();        //Checks if form is valid
    if(isvalid){
      _formKey.currentState!.save();
      submitForm();

    }
    else{
      print("Error");
    }
  }
  submitForm(){
    print(FirstName);
    print(LastName);
    print(Email);
    print(Password);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form"), backgroundColor: Colors.greenAccent,)
      ,
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  decoration:InputDecoration(
                    hintText: 'Enter your Name',
                    hintStyle:TextStyle(
                      fontStyle: FontStyle.italic,


                    ),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(20),
                    ),

                    errorBorder: OutlineInputBorder(borderSide: BorderSide(
                      color: Colors.red),
                      borderRadius: BorderRadius.circular(20),
                    ),),


          key: ValueKey('FirstName'),
              validator:(value){
                if(value.toString().isEmpty){
                  return 'Enter First Name';
                }
                else{
                  return null;
                }
              },
              onSaved: (value){
                FirstName=value.toString();
              }),
              SizedBox(height:20.0),
              TextFormField(
                  decoration:InputDecoration(
                    hintText: 'Enter your Last Name',
                    hintStyle:TextStyle(
                      fontStyle: FontStyle.italic,


                    ),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(20),
                    ),
                    errorBorder: OutlineInputBorder(borderSide: BorderSide(
                        color: Colors.red),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),key: ValueKey('LastName'),
                  validator:(value){
                    if(value.toString().isEmpty){
                      return 'Enter LastName';
                    }
                    else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    LastName=value.toString();
                  }),
              SizedBox(height:20.0),
              TextFormField(
                  decoration:InputDecoration(
                    hintText: 'Enter your Email',

                    hintStyle:TextStyle(
                      fontStyle: FontStyle.italic,

                    ),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(20),
                    ),
                    errorBorder: OutlineInputBorder(borderSide: BorderSide(
                        color: Colors.red),
                      borderRadius: BorderRadius.circular(20),
                    ),),
                  key: ValueKey('Email'),
                  validator:(value){
                    if(value.toString().endsWith('@gmail.com')){
                      return null;
                    }
                    else{
                      return 'Enter valid Email';
                    }
                  },
                  onSaved: (value){
                    Email=value.toString();
                  }),
              SizedBox(height:20.0),
              TextFormField(
                  decoration:InputDecoration(
                    hintText: 'Password',

                    hintStyle:TextStyle(
                      fontStyle: FontStyle.italic,

                    ),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(20),
                    ),
                    errorBorder: OutlineInputBorder(borderSide: BorderSide(
                        color: Colors.red),
                      borderRadius: BorderRadius.circular(20),
                    ),),
                  key: ValueKey('Password'),
                  validator:(value){
                    if(value.toString().length<=6){
                      return 'Password should be of length greater than 6';
                    }
                    else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    Password=value.toString();
                  }),
              SizedBox(height:20.0),
              TextButton(onPressed:(){
                final snackbar1=SnackBar(action: SnackBarAction(label: 'Undo',onPressed: (){},),duration: const Duration(milliseconds: 1000),content: Text("Help"),backgroundColor: Colors.black,);
                trySubmit();
                ScaffoldMessenger.of(context).showSnackBar(snackbar1);
              },
              child: Text("Submit"))
            ],

          ),
        ),),

    );
  }
  }

