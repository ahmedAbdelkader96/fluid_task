import 'package:flutter/material.dart';
import 'package:task/features/main_view/widgets/home_widget.dart';
import 'package:task/features/main_view/widgets/navigation_bar_widget.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/bg.png',fit: BoxFit.cover,),
          const HomeWidget(),
          const Positioned(bottom: 0,child: NavigationBarWidget(selectedIndex: 1,))
        ],
      ),
    );
  }
}
