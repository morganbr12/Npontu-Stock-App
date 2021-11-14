import 'package:flutter/material.dart';


class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = 350,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: gradient, 
        boxShadow: const [
         BoxShadow(
          color: Color.fromRGBO(221, 115, 42, 1),
          offset: Offset(0.0, 1.5),
          blurRadius: 1.5,
        ),
      ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            splashColor: const Color.fromRGBO(221, 115, 42, 1),
            child: Center(
              child: child,
            )),
      ),
    );
  }
}