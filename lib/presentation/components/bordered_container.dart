import 'package:flutter/material.dart';

class BorderedContainer extends StatelessWidget {
  final Widget child;
  final Function onPressed;

  BorderedContainer({@required this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFF0867F9),
            Color(0xFFDF4667),
          ],
        ),
      ),
      padding: EdgeInsets.all(1.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        child: Ink(
          decoration: BoxDecoration(
            color: Color(0xFF181923),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: InkWell(
            splashColor: Color(0xFFDF4667),
            borderRadius: BorderRadius.circular(10.0),
            onTap: onPressed,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
