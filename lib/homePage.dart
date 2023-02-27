import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController noc = TextEditingController();
  var i = 1;
  List l1 = [];
  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: myKey,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              "Multiplication Table",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Valid Data !!!";
                    }
                    return null;
                  },
                  controller: noc,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    label: Text(
                      "Enter the No.",
                      style: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if (myKey.currentState!.validate()) {
                      Navigator.pushNamed(context, 'table',
                          arguments: noc.text);
                      noc.clear();
                    }
                  },
                  child: Container(
                    height: 40,
                    width: 70,
                    color: Colors.black,
                    alignment: Alignment.center,
                    child: Text(
                      "Create",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
