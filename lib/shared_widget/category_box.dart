import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox(
      {Key? key, required this.image, required this.color, required this.tag})
      : super(key: key);

  final String image;
  final Color color;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 140,
      width: 140,
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  backgroundColor: color, child: Image.asset("res/img/$image")),
              Text(
                tag,
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                "Rp 70.000",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
