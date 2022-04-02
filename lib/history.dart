import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

var history = "";

class HistoryPage extends StatelessWidget {
//const HistoryPage({Key? key}) : super(key: key);

  HistoryPage({Key? key}) : super(key: key) {
    ("constructor called");
    getHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "History",
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Text(
          history,
          style: const TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }

  getHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return int
    String? historyData = prefs.getString('history');
    history = '$historyData';
  }
}
