import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isCalenderView = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          isCalenderView = !isCalenderView;
        });
      },
      child: Container(
        height: 42,
        width: 84,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
                color: const Color(0xFFFFFFFF).withOpacity(0.15), width: 1.5)),
        padding: const EdgeInsets.all(1),
        child: Stack(
          children: [
            AnimatedAlign(
              alignment: isCalenderView
                  ? AlignmentDirectional.centerStart
                  : AlignmentDirectional.centerEnd,
              duration: const Duration(milliseconds: 200),
              child: Image.asset(
                'assets/images/switch_bg.png',
                height: 37,
                width: 37,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 37,
                  width: 37,
                  decoration: const BoxDecoration(
                      color: Colors.transparent, shape: BoxShape.circle),
                  padding: const EdgeInsets.only(right: 2),

                  child: Center(
                    child: SvgPicture.asset('assets/images/Subtract.svg'),
                  ),
                ),
                Container(
                  height: 37,
                  width: 37,
                  decoration: const BoxDecoration(
                      color: Colors.transparent, shape: BoxShape.circle),
                  padding: const EdgeInsets.only(left: 4),
                  child: Center(
                    child: SvgPicture.asset('assets/images/List_Check.svg'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
