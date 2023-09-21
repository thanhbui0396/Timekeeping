import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DetailsBookPage extends StatefulWidget {
  const DetailsBookPage({super.key});

  @override
  State<DetailsBookPage> createState() => _DetailsBookPageState();
}

class _DetailsBookPageState extends State<DetailsBookPage> {
  final DateRangePickerController _controller = DateRangePickerController();

  List<DateTime> listSelectedDays = [
    DateTime(2023, 9, 20),
    DateTime(2023, 9, 25)
  ];

  _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    print('111111111111');

    // return showDialog<String>(
    //   context: context,
    //   builder: (BuildContext context) => AlertDialog(
    //     title: const Text('AlertDialog Title'),
    //     content: const Text('AlertDialog description'),
    //     actions: <Widget>[
    //       TextButton(
    //         onPressed: () => Navigator.pop(context, 'Cancel'),
    //         child: const Text('Cancel'),
    //       ),
    //       TextButton(
    //         onPressed: () {
    //           Navigator.pop(context, 'OK');
    //         },
    //         child: const Text('OK'),
    //       ),
    //     ],
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 350,
            child: SfDateRangePicker(
              controller: _controller,
              toggleDaySelection: true,
              initialSelectedDates: listSelectedDays,
              onSelectionChanged: _onSelectionChanged,
              backgroundColor: Colors.amber,
              selectionMode: DateRangePickerSelectionMode.multiple,
              selectionShape: DateRangePickerSelectionShape.rectangle,
              showTodayButton: true,
              navigationMode: DateRangePickerNavigationMode.snap,
              headerStyle:
                  const DateRangePickerHeaderStyle(textAlign: TextAlign.center),
              showNavigationArrow: true,
              monthViewSettings: const DateRangePickerMonthViewSettings(
                firstDayOfWeek: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
