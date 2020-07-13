import 'package:flutter/material.dart';
import 'package:passcrypt/addpass.dart';
import 'package:passcrypt/datalist.dart';
import 'data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Data> _datadetail = [];

  void _addDetails(String username, String email, String password) {
    final txdetails = Data(
      username: username,
      email: email,
      password: password,
    );
    setState(() {
      _datadetail.add(txdetails);
    });
  }

  void buttomsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return AddPass(_addDetails);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar

      appBar: AppBar(
        title: Center(
          child: Text(
            'Passcrypt',
          ),
        ),
        backgroundColor: Colors.purple,
      ),

      // body
      body: Column(
        children: [
          DataList(_datadetail),
        ],
      ),
      //floating button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.purple,
        onPressed: () => buttomsheet(context),
      ),
    );
  }
}
