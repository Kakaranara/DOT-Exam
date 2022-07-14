import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({Key? key}) : super(key: key);

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
                child: Image.asset("res/img/pizza.png"),
              ),
              Text(
                "Makanan",
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
