import 'package:competey/models/activity_type.dart';
import 'package:competey/services/activity_types.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:competey/constants.dart';

class ActivityTypeSearchPage extends StatefulWidget {
  @override
  _ActivityTypeSearchPageState createState() => _ActivityTypeSearchPageState();
}

class _ActivityTypeSearchPageState extends State<ActivityTypeSearchPage> {
  List<ActivityType> activityTypes = ActivityTypes.getActivityTypes();

  void searchList(searchValue) {
    setState(() {
      activityTypes = ActivityTypes.getActivityTypes(searchValue: searchValue);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Enter activity type',
                      ),
                      autofocus: true,
                      onChanged: searchList,
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 20.0,
                        ),
                        children: activityTypes.map((data) {
                          return ListTile(
                            title: Text(data.name),
                            onTap: () => Navigator.pop(context, data),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.close,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
}
