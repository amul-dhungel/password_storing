import 'package:flutter/material.dart';
import 'data.dart';

class DataList extends StatelessWidget {
  final List<Data> listcard;
  DataList(this.listcard);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: listcard.isEmpty
          ? Column(children: [
              Padding(
                padding: const EdgeInsets.all(90.0),
                child: Text(
                  "No saved passwords",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              )
            ])
          : ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username :: ' + listcard[index].username,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey[600]),
                        ),
                        Text('Email :: ' + listcard[index].email,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey[600])),
                        Text(
                          'Password :: ' + listcard[index].password,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: listcard.length,
            ),
    );
  }
}
