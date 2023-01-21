import 'package:flutter/material.dart';
import 'package:latihan/ChatPage.dart';
import 'package:latihan/LoginPage.dart';
import 'package:latihan/SplashScreen.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool secure = true;
  bool person = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            "Selamat Datang",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Builder(builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 30),
                child: Text("Email"),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(person ? Icons.person : Icons.person_add),
                          onPressed: () {
                            setState(() {
                              person = !person;
                            });
                          },
                        ),
                        border: OutlineInputBorder())),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                ),
                child: Text("Password"),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 10,
                ),
                child: TextField(
                    controller: password,
                    obscureText: secure,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              secure = !secure;
                            });
                          },
                          icon: Icon(
                              secure ? Icons.visibility : Icons.visibility_off),
                        ),
                        border: OutlineInputBorder())),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        if (email.text.isNotEmpty && password.text.isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Login(
                                        nama: email.text,
                                        password: password.text,
                                      ))).then((value) {
                            setState(() {
                              email.clear();
                              password.clear();
                            });
                          });
                        } else if (email.text.isNotEmpty &&
                            password.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("passwornya isi")));
                        } else if (email.text.isEmpty &&
                            password.text.isNotEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("emailnya isi")));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("gabisa login")));
                        }
                      },
                      child: Text("Login"))),
              SizedBox(
                height: 25,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SplashScreen()));
                      },
                      child: Text("Chat")))
            ],
          );
        }),
      ),
    );
  }
}
