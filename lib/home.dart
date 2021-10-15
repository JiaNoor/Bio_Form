import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NewContact extends StatelessWidget {
  const NewContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Contact"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(child: info()),
    );
  }
}

Widget info() {
  return Column(
    children: [
      SizedBox(
        height: 12,
      ),
      SizedBox(
        width: 100,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.blueAccent,
                Colors.blueGrey,
                Colors.cyanAccent,
              ],
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          padding: const EdgeInsets.all(1.5),
          child: CircleAvatar(
            radius: 60.0,
            backgroundColor: Colors.black,
            backgroundImage: AssetImage('assets/images/pic-2.jpeg'),
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.person),
        title: SizedBox(
          height: 60,
          //width: 350,
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Name',
              ),
            ),
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.phone),
        title: SizedBox(
          height: 60,
          //width: 350,
          child: Container(
            //color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Phone',
              ),
            ),
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.email),
        title: SizedBox(
          height: 60,
          //width: 350,
          child: Container(
            //color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.arrow_right),
        title: Text("Nick"),
        subtitle: Text("None"),
      ),
      ListTile(
        leading: const Icon(Icons.view_day),
        title: Text("Birthday"),
        subtitle: Text("dd-mm-yyyy"),
      ),
      ListTile(
        leading: const Icon(Icons.people),
        title: Text("Contact Group"),
        subtitle: Text("Not Mentioned"),
      ),
      Container(
        width: double.infinity,
        alignment: Alignment.centerRight,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            "Save",
            textAlign: TextAlign.right,
          ),
        ),
      ),
    ],
  );
}
