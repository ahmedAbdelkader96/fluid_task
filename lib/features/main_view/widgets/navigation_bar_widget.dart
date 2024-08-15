import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/global/methods_helpers_functions/media_query.dart';
import 'package:task/global/widgets/general_circular_raw_material_button.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key, required this.selectedIndex});
  final int selectedIndex;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MQuery.getWidth(context, 393),
      decoration: BoxDecoration(
        //color: Colors.amber,
          gradient: LinearGradient(
              colors: [const Color(0xFF000000).withOpacity(0), const Color(0xFF000000)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)
      ),
      padding: EdgeInsets.symmetric(horizontal: MQuery.getWidth(context, 16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GeneralCircularRawMaterialButton(
              onPressed: (){},
              height: 62,
              width: 62,
              backColor: Colors.transparent,
              borderSideWidth: 0,
              borderSideColor: Colors.transparent,
              child: SvgPicture.asset('assets/images/home.svg',
              color: selectedIndex == 0 ? Colors.white :
              const Color(0xFFFFFFFF).withOpacity(0.5))),

          GeneralCircularRawMaterialButton(
              onPressed: (){},
              height: 62,
              width: 62,
              backColor: Colors.transparent,
              borderSideWidth: 0,
              borderSideColor: Colors.transparent,
              child: SvgPicture.asset('assets/images/calendar.svg',
                  color: selectedIndex == 1 ?  Colors.white :
                  const Color(0xFFFFFFFF).withOpacity(0.5))),

          GeneralCircularRawMaterialButton(
              onPressed: (){},
              height: 62,
              width: 62,
              backColor: Colors.transparent,
              borderSideWidth: 0,
              borderSideColor: Colors.transparent,
              child: Image.asset('assets/images/grad_nav.png')),


          GeneralCircularRawMaterialButton(
              onPressed: (){},
              height: 62,
              width: 62,
              backColor: Colors.transparent,
              borderSideWidth: 0,
              borderSideColor: Colors.transparent,
              child: SvgPicture.asset('assets/images/chat.svg',
                  color: selectedIndex == 2 ?  Colors.white :
                  const Color(0xFFFFFFFF).withOpacity(0.5))),
          GeneralCircularRawMaterialButton(
              onPressed: (){},
              height: 62,
              width: 62,
              backColor: Colors.transparent,
              borderSideWidth: 0,
              borderSideColor: Colors.transparent,
              child: SvgPicture.asset('assets/images/search.svg',
                  color: selectedIndex == 3 ?  Colors.white :
                  const Color(0xFFFFFFFF).withOpacity(0.5))),


        ],
      ),
    );
  }
}
