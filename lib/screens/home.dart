import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_sqfentity/model/model.dart';
import 'package:mobx_sqfentity/store/user_store.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var store = UserStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Observer(
        builder: (context) {
          List<User> items = store.users.map((element) => element as User).toList();
          return Text('${items.length}');
        },
      ),
    );
  }
}
