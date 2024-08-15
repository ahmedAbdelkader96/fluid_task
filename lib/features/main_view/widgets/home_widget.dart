import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:task/features/main_view/widgets/action_button.dart';
import 'package:task/features/main_view/widgets/customized_gradient_button.dart';
import 'package:task/features/main_view/widgets/gradient_button.dart';
import 'package:task/features/main_view/widgets/switch_button.dart';
import 'package:task/features/main_view/widgets/timeline_picker.dart';
import 'package:task/global/methods_helpers_functions/media_query.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  DateTime selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [

          SizedBox(
            height: MQuery.getheight(context, 63),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MQuery.getWidth(context, 16)),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    "Your today’s \nAgenda",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 32,
                        color: Colors.white,
                        height: 1),
                  ),
                ),
                const ActionButton(
                  image: 'assets/images/filter.svg',
                ),
                SizedBox(
                  width: MQuery.getWidth(context, 6),
                ),
                const ActionButton(
                  image: 'assets/images/plus.svg',
                ),
              ],
            ),
          ),

          SizedBox(
            height: MQuery.getheight(context, 14),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: MQuery.getWidth(context, 16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(
                    height: MQuery.getheight(context, 10),
                  ),

                  TimelinePicker(selectedValue: selectedValue,
                    onDateChange: (selectedDate) {
                      setState(() {
                        selectedValue = selectedDate;
                      });
                    }),


                  SizedBox(
                    height: MQuery.getheight(context, 32),
                  ),



                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Jiffy.parseFromDateTime(selectedValue).EEEE+
                              ' '+selectedValue.day.toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            Text(
                              '4 events',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xFFFFFFFF).withOpacity(0.5)),
                            ),

                          ],
                        ),
                      ),
                      const SwitchButton()
                    ],
                  ),



                  SizedBox(
                    height: MQuery.getheight(context, 24),
                  ),

                  GradientButton(
                      onPressed: () {},
                      radius: 32,
                      image: 'assets/images/grad1.png',
                    title: 'Trip to Rome',
                    usersImagesList: const [
                      'assets/images/user3.png',
                      'assets/images/user2.png',
                      'assets/images/user1.png'
                    ],
                    description: 'Discuss a trip ',
                    timeRange: '10:00 - 10:20 AM',
                    statusImage: 'assets/images/work.png'),
                  SizedBox(
                    height: MQuery.getheight(context, 10),
                  ),
                  CustomizedGradientButton(
                      onPressed: () {},
                      radius: 32,
                      title: 'Trip to Rome',
                      usersImagesList: const [
            'assets/images/user4.png'
                      ],
                      description: 'Discuss a trip with Tom',
                      timeRange: '11:00 - 12:30 AM',
                      image: 'assets/images/grad2.png',
                      statusImage: 'assets/images/high.png'),
                  SizedBox(
                    height: MQuery.getheight(context, 10),
                  ),
                  GradientButton(
                      onPressed: () {},
                      radius: 32,
                      title: 'Evening routine',
                      usersImagesList: const [
                        'assets/images/user5.png'
                      ],
                      description: 'Lunch in café',
                      timeRange: '13:00 - 14:30 PM',
                      image: 'assets/images/grad3.png',
                      statusImage: 'assets/images/life.png'),
                  SizedBox(
                    height: MQuery.getheight(context, 10),
                  ),

                  GradientButton(
                      onPressed: () {},
                      radius: 32,
                      title: 'Evening routine',
                      usersImagesList: const [
                        'assets/images/user5.png'

                      ],
                      description: 'Lunch in café',
                      timeRange: '13:00 - 14:30 PM',
                      image: 'assets/images/grad3.png',
                      statusImage: 'assets/images/life.png'),
                  const SizedBox(
                    height: 150,
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
