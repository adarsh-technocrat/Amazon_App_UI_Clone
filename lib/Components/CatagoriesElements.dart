import 'package:flutter/material.dart';

class CategoriesElements extends StatelessWidget {
  final Color color;
  final String iconimage;
  final String title;
  final bool isbigimage;
  final Function onTap;

  CategoriesElements(
      {@required this.color,
      @required this.iconimage,
      @required this.title,
      this.onTap,
      this.isbigimage = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: Color(
                //   0xffEEC761,
                // ),
                image: new DecorationImage(
                  image: new AssetImage("assets/goldsheet.PNG"),
                  fit: BoxFit.fill,
                )),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(shape: BoxShape.circle, color: color),
                child: Center(
                  child: isbigimage
                      ? Image.asset(
                          iconimage,
                          height: 22,
                          color: Colors.black,
                        )
                      : Image.asset(iconimage),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
