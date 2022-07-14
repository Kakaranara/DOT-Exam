import 'package:flutter/material.dart';

class BigBox extends StatelessWidget {
  const BigBox(
      {Key? key, required this.color, required this.text, required this.amount})
      : super(key: key);

  final Color color;
  final String text;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          Text("Rp. $amount", style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
