import 'package:flutter/material.dart';


class VerifyForm extends StatelessWidget {
  const VerifyForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0, bottom: 15.0),
      child: TextFormField(
        onTap: () {},
        style: const TextStyle(
          fontSize: 15,
          height: 1.0,
          color: Colors.white,
        ),
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
          hintText: "Enter Code",
          hintStyle: TextStyle(
              color: Colors.white
          ),
          border:  OutlineInputBorder(),
        ),
      ),
    );
  }
}
