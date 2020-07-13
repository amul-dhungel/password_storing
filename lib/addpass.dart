import 'package:flutter/material.dart';

class AddPass extends StatefulWidget {
  Function textdata;
  AddPass(Function txdata) {
    this.textdata = txdata;
  }
  @override
  _AddPassState createState() => _AddPassState();
}

class _AddPassState extends State<AddPass> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void passingdata() {
    final txusername = username.text;
    final txemail = email.text;
    final txpassword = password.text;
    widget.textdata(txusername, txemail, txpassword);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: username,
              onSubmitted: (value) => passingdata,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: email,
              onSubmitted: (value) => passingdata,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: password,
              onSubmitted: (value) => passingdata,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                color: Colors.purple,
                onPressed: () => passingdata(),
                child: Text(
                  'Adds',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
