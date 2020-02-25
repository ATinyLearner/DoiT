import 'package:flutter/material.dart';

final kAddButton = RaisedButton(
  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
  elevation: 7,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  color: Colors.lightBlueAccent,
  onPressed: () {},
  child: Text(
    'Add',
    style: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
  ),
);
