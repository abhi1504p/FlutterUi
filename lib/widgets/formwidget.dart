import 'package:flutter/material.dart';

class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  String firstname="";String lastname="";String email="";String password="";
  final _formkey = GlobalKey<FormState>();


                /*     Function         */

  trysumbit(){
    _formkey.currentState!.save();
    final isvalid=_formkey.currentState!.validate();
    if(isvalid){
      submitform();
    }
    else{
      print("error");
    }
  }
  submitform(){
    print(firstname); print(lastname); print(email); print(password);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forms",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Form(
            child:Column(
              children: [
                TextFormField(
                  decoration:  InputDecoration(hintText: "Firstname"),
                  key: ValueKey("firstname"),
                  validator: (value){
                    if(value.toString().isEmpty){
                      return ("firstname should be filled");
                    }
                    else{
                      return null;
                    };
                  },
                  onSaved: (value){
                    firstname=value.toString();
                  },

                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Lastname"),
                  key: ValueKey("lastname"),
                  validator: (value){
                    if(value.toString().isEmpty){
                      return ("lastname should be filled");
                    }
                    else{
                      return null;
                    };
                  },
                  onSaved: (value){
                    lastname=value.toString();
                  },
                ),TextFormField(
                  decoration: InputDecoration(hintText: "Email"),
                  key: ValueKey("email"),
                  validator: (value){
                    if(value.toString().isEmpty){
                      return ("Email should be filled");
                    }
                    else{
                      return null;
                    };
                  },
                  onSaved: (value){
                    email=value.toString();
                  },
                ),TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Password"),
                  key: ValueKey("password"),
                  validator: (value){
                    if(value.toString().length<=5){
                      return ("password should be greater then 6");
                    }
                    else{
                      return null;
                    };
                  },
                  onSaved: (value){
                    password=value.toString();
                  },
                ),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  trysumbit();
                }, child: Text("Submit"))
              ],
            ),
            key: _formkey,
          ),
        ),
      ),
    );
  }
}
