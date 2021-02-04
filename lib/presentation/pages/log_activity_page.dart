import 'package:competey/models/activity_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:competey/presentation/route_name_builder.dart';
import 'package:competey/presentation/components/bordered_container.dart';
import 'package:competey/presentation/components/form_button.dart';

class LogActivityPage extends StatefulWidget {
  @override
  _LogActivityPageState createState() => _LogActivityPageState();
}

class _LogActivityPageState extends State<LogActivityPage> {
  String _activity = '-';
  String _date = '-';

  void openSearchActivity() async {
    final result = await Navigator.of(
      context,
      rootNavigator: true,
    ).pushNamed(
      RouteNameBuilder.activityTypeSearch(),
    );

    this.setState(() {
      if (result != null) {
        ActivityType activityType = result;
        _activity = activityType.name;
      }
    });
  }

  void openDatePicker() async {
    final result = await Navigator.of(
      context,
      rootNavigator: true,
    ).pushNamed(
      RouteNameBuilder.datePicker(),
    );

    this.setState(() {
      if (result != null) {
        _date = result;
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Log Activity'),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BorderedContainer(
                      child: FormButton(
                        title: 'activity',
                        value: _activity,
                      ),
                      onPressed: openSearchActivity,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    BorderedContainer(
                      child: FormButton(
                        title: 'date',
                        value: _date,
                      ),
                      onPressed: openDatePicker,
                    ),
                  ],
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ),
      );
}

// todo create page to log bowling
