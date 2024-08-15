import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class DatePickerTimeLineWidget extends StatelessWidget {
  const DatePickerTimeLineWidget({super.key, required this.controller, required this.selectedValue,required this.onDateChange});
  final EasyInfiniteDateTimelineController controller ;
  final DateTime selectedValue;
  final Function(DateTime)? onDateChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EasyInfiniteDateTimeLine(
          controller: controller,
          onDateChange:onDateChange ,
          activeColor: Colors.amber,
          headerBuilder: (context,_){
            return const SizedBox.shrink();
          },

          dayProps:  EasyDayProps(
              //todayHighlightStyle: TodayHighlightStyle.none,
              // todayStyle: DayStyle(
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.all(Radius.circular(8)),
              //
              //   ),
              //   dayNumStyle: TextStyle(fontSize: 12,
              //       fontWeight: FontWeight.w700,
              //       //color: Color(0xFFFFFFFF)
              //   ),
              //   monthStrStyle:   TextStyle(fontSize: 12,
              //   fontWeight: FontWeight.w700,
              //   color: Color(0xFF96A0B5)
              // ),
              //   dayStrStyle:TextStyle(fontSize: 12,
              //       fontWeight: FontWeight.w700,
              //       color: Color(0xFF96A0B5)
              //   ),
              //
              // ),
            todayStyle:DayStyle(
              decoration: const BoxDecoration(

              ),
              dayNumStyle: const TextStyle(fontSize: 16,
              fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFFFF)

                //color: Color(0xFFFFFFFF)
            ),

              dayStrStyle:TextStyle(fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFFFFFFF).withOpacity(0.5)
              ),

            ) ,

              dayStructure: DayStructure.dayStrDayNum,
              activeDayNumStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF)),
              inactiveDayNumStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFFFF)),
              activeDayStrStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFFFFFFF).withOpacity(0.5)),
              inactiveDayStrStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFFFFFFF).withOpacity(0.5)),
              activeDayDecoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/date_bg.png')),

              ),
              inactiveDayDecoration: const BoxDecoration(
                //color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),

              height: 60,
              width: 48),
          firstDate: DateTime.now(),
          lastDate:  DateTime.now().add(const Duration(days: 365)),
          focusDate: selectedValue,
          selectionMode: const SelectionMode.autoCenter(),
        ),
      ],
    );
  }
}
