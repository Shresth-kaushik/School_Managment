import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:school_management_system/pages/forgot_password.dart';
import 'package:school_management_system/user/user_main.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);
 static String routeName='login';
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey=GlobalKey<FormState>();
  var email="";
  var password="";

  //create a text controller and use it to retrieve the current value of the textfield;

  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  userLogin() async{

    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email:email,password:password);
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserMain(),
    ),);

    }
    on FirebaseAuthException catch(e){
      if(e.code=='user-not-found'){
        print('No User found for that email');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "    No User found for that email ",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        );
      }
      else if(e.code=='wrong-password'){
        print('         Wrong password provided by user');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "   Wrong password provided by user",
              style: TextStyle(fontSize: 18.0,color: Colors.black),
            ),
          ),
        );
      }
    }
  }

  get value => null;

  @override
  void dispose(){
  //  clean the controller when the widget is disposed
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Login"),),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
          child: ListView(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: TextFormField(
                    autofocus:false,
                    decoration: InputDecoration(
                      labelText:'Email',
                      labelStyle: TextStyle(fontSize: 20.0),
                      border: OutlineInputBorder(),
                      errorStyle:
                        TextStyle(color: Colors.redAccent,fontSize: 15.0),
                    ),
                    controller: emailController,
                      validator:(value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Email';
                        }
                        else if (!value.contains('@')) {
                          return 'Please Enter Valid Email';
                        }
                        return null;
                      }
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child:TextFormField(
                    autofocus:false,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText:'Password',
                      labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                      errorStyle:
                        TextStyle(color: Colors.redAccent,fontSize: 15),
                    ),
                    controller: passwordController,
                    validator: (value){
                      if(value==null || value.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Container(
            margin: EdgeInsets.only(left: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 ElevatedButton(onPressed: (){
                   if(_formKey.currentState!.validate()){
                     setState(() {
                       email=emailController.text;
                       password=passwordController.text;
                     });
                     userLogin();
                   }
                 },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18.0),
                ),
                 ),
                   TextButton(
                     onPressed: ()=>{
                       Navigator.push(
                           context,
                         MaterialPageRoute(
                             builder: (context)=> ForgotPassword
                               (),
                         ),
                       )
                     },
                     child: Text(
                       'Forget Paaword ?',
                       style: TextStyle(fontSize: 14.0),
                     ),
                   )
               ],
              ),

              )
            ],
          ),
        )
      ),
    );

  }
}

//