import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  String nama;
  String password;

  Login({super.key, required this.nama, required this.password});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Profile Saya",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 20,
          ),
          Text("Saya adalah ${widget.nama}"),
          SizedBox(
            height: 50,
          ),
          widget.nama == "Gama"
              ? Image.asset(
                  "asset/gama.jpg",
                  height: 200,
                  width: 200,
                )
              : widget.nama == "PEP"
                  ? Image.asset(
                      "asset/pep.jpg",
                      height: 200,
                      width: 200,
                    )
                  : Image.asset(
                      "asset/densu.jpg",
                      height: 200,
                      width: 200,
                    ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
            child: Container(
              child: Column(
                children: [
                  Text(widget.nama),
                  Text(widget.password),
                ],
              ),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black)),
            ),
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () => Navigator.pop(
                      context, MaterialPageRoute(builder: (_) => Logout())),
                  child: Text("Logout")))
        ],
      ),
    );
  }
}

Logout() {}
