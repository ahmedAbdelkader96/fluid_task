import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/global/widgets/general_circular_raw_material_button.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: Stack(
        children: [
          Image.asset('assets/images/grad4.png'),
          GeneralCircularRawMaterialButton(
              onPressed: (){},
              height: 40,
              width: 40,
              backColor: Colors.transparent,
              borderSideWidth: 0,
              borderSideColor: Colors.transparent,
              child: Center(child: SvgPicture.asset(image),)),
        ],
      ),
    );
  }
}
