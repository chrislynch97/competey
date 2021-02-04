import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:competey/presentation/components/bordered_container.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _selectedDate;

  void _closePicker() {
    Navigator.pop(context, DateFormat('yyyy-MM-dd').format(_selectedDate));
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      _selectedDate = args.value;
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: SfDateRangePicker(
                          maxDate: DateTime.now(),
                          onSelectionChanged: _onSelectionChanged,
                        ),
                      ),
                    ),
                    RaisedButton(
                      child: Text('Okay'),
                      onPressed: _closePicker,
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
