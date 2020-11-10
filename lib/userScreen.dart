import 'dart:convert' as convert;

import 'package:firsttesting/api.dart';
import 'package:firsttesting/users.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:firsttesting/userDetail.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {

  var users = List<Users>();

  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        //Iterable list = convert.json.decode(response.body);
        var list = convert.json.decode(response.body);
        print(list);
        users = list.map((model) => Users.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getUsers();
  }

  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('User',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        )),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
         child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ListTile(
                title: Text(users[index].name),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserDetail(user: users[index]),
                  ),
                );
              },
            );
          },),
      ),
    );
  }
}