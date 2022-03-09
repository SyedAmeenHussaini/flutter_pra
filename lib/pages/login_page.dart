import "package:flutter/material.dart";
import 'package:flutter_catalog/pages/Home_page.dart';
import 'package:flutter_catalog/pages/utilits/approut.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRout);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assest/images/login_page.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 25,
                child: Text(
                  "Hey",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.deepPurpleAccent),
                ),
              ),
              Text("Welcome $name",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "UserName"),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "user name should not empty!";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "password should not empty!";
                        } else if (value!.length < 6) {
                          return "password should be atleast 6 characters";
                        }
                        return null;
                      },
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      color: Colors.purple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 40 : 6),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 40 : 110,
                          height: 40,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                        ),
                      ),
                    )

                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(95, 45)),
                    //   onPressed: () {
                    //     Navigator.popAndPushNamed(context, MyRoutes.homeRout);
                    //   },
                    //  humko elvated button ki zarorat nhi hai  )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
