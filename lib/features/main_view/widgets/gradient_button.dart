import 'package:flutter/material.dart';
import 'package:task/global/methods_helpers_functions/media_query.dart';

class GradientButton extends StatelessWidget {
  const GradientButton(
      {super.key,
      required this.onPressed,
      required this.radius,
      required this.image,
      required this.statusImage,
      required this.title,
      required this.usersImagesList,
      required this.description,
      required this.timeRange});

  final void Function() onPressed;
  final double radius;
  final String image;
  final String statusImage;

  final List<String> usersImagesList;
  final String title;
  final String description;
  final String timeRange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: MQuery.getWidth(context, 361),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
          RawMaterialButton(
            onPressed: onPressed,
            constraints: BoxConstraints(
                minHeight: 140,
                maxHeight: 140,
                minWidth: MQuery.getWidth(context, 361),
                maxWidth: MQuery.getWidth(context, 361)),
            fillColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius)),
            elevation: 0,
            focusElevation: 0,
            hoverElevation: 0,
            highlightElevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFFFFFFFF).withOpacity(0.5)),
                        ),
                      ),
                      Image.asset(
                        statusImage,
                        width: 56,
                        height: 28,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        description,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          timeRange,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF)),
                        ),
                      ),
                      Container(
                          height: 38,
                          width: 80,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent),
                          child: Stack(
                            //alignment: AlignmentDirectional.centerStart,
                            children: [


                              if(usersImagesList.length>0) Positioned(right: 0,child: Image.asset(usersImagesList[0],
                                  height: 38,width: 38)),

                              if(usersImagesList.length>1)Positioned(right: 21,child: Image.asset(usersImagesList[1],
                                  height: 38,width: 38)),

                              if(usersImagesList.length>2) Positioned(right: 42,child: Image.asset(usersImagesList[2],
                                  height: 38,width: 38)),





                            ],
                          )

                          // ImageStack(
                          //   imageSource: ImageSource.Asset,
                          //   imageList: usersImagesList,
                          //   totalCount: usersImagesList.length,
                          //   imageRadius: 38,
                          //   imageCount: 3,
                          //   imageBorderWidth: 0
                          // ),
                          )
                    ],
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
