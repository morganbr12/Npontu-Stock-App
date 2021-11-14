
import 'package:flutter/material.dart';

class Users {
  final String id;
  final String name;
  final String email;
  final String password;
  final Image image;


  Users({
    @required this.id,
    @required this.name,
    @required this.email,
    this.image,
    this.password,
  });
}


