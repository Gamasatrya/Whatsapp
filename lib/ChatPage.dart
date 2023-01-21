import 'dart:ffi';

import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List nama = [
    "Gebetan <3",
    "buleee",
    "ilham",
    "ican",
    "yosep",
    "pep",
    "Gebetan ican",
    "pep",
    "sasha",
    "ical",
    "rusli"
  ];
  List message = [
    "lg ngapain sih????",
    "lu dimana?",
    "oh iyaa",
    "gam dia bales apaan?",
    "valo",
    "yaela",
    "icannya kemana ya gam?",
    "parah lu",
    "kuyyy",
    "gam",
    "woy gam"
  ];
  List jam = [
    "23.48",
    "20.23",
    "20.20",
    "20.15",
    "18.22",
    "18.15",
    "16.36",
    "15.19",
    "13.10",
    "13.01",
    "13.00"
  ];
  List notif = ["14", "2", "3", "5", "1", "7", "10", "6", "4", "3", "7"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Edit",
            style: TextStyle(color: Colors.blue, fontSize: 15),
          ),
        ),
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.blue,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.chat_outlined,
              color: Colors.blue,
            ),
          ),
        ],
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              "Chats",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Brodcast List",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue),
                ),
                Text(
                  "New Group",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 0.2,
            width: double.infinity,
            color: Colors.grey,
          ),
          Flexible(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  height: 0.2,
                  color: Colors.grey,
                );
              },
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  child: ListTile(
                    leading: Container(
                      child: Icon(Icons.person),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(36)),
                    ),
                    title: Text(
                      nama[index],
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      message[index],
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    trailing: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(jam[index], style: TextStyle(color: Colors.blue)),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Center(child: Text(notif[index])),
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(36)),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
