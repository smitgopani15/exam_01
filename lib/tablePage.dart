import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    String s1 = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "Multiplication Table",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return tableUI(s1 as String, index);
          },
        ),
      ),
    );
  }

  Widget tableUI(String no, int ind) {
    return Container(
      height: 50,
      // width: double.infinity,
      margin: EdgeInsets.all(10),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "$no",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          Text(
            "X",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          Text(
            "${ind + 1}",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          Text(
            "=",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          Text(
            "${(int.parse(no) * (ind + 1))}",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
