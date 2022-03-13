import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/email.dart';

class DetailPage extends StatelessWidget {
  // final Email email;
  final String inisial;
  final String subject;
  final String message;

  const DetailPage({
    Key? key,
    required this.inisial,
    required this.subject,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Container(
        child: Flex(
            direction: Axis.vertical,
            children: [
          Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    inisial,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    subject,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    message,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
