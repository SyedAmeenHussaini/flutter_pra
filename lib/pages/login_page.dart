import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
          Text("Welcome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "UserName"),
                ),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password")),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: (() {
                      print("Miracle");
                    }),
                    child: Text("Login"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
