import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final String title;
  final String value;
  final Function onPressed;

  FormButton({this.title, this.value, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
                right: BorderSide(
              color: Colors.white,
              width: 1.0,
            )),
          ),
          padding: EdgeInsets.only(right: 20.0),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}
