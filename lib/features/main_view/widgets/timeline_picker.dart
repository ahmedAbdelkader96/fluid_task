import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:task/features/main_view/widgets/date_picker_time_line_widget.dart';

class TimelinePicker extends StatefulWidget {
   const TimelinePicker({super.key, required this.selectedValue, required this.onDateChange});
    final DateTime selectedValue;
  final void Function(DateTime) onDateChange;
  @override
  State<TimelinePicker> createState() => _TimelinePickerState();
}

class _TimelinePickerState extends State<TimelinePicker> {

  DateTime now  = DateTime.now();

  EasyInfiniteDateTimelineController controller =
  EasyInfiniteDateTimelineController();

  @override
  Widget build(BuildContext context) {
    return     DatePickerTimeLineWidget(
        controller: controller,
        selectedValue: widget.selectedValue,
        onDateChange: widget.onDateChange
    );
  }
}
