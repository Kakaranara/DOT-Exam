import 'package:flutter/material.dart';

import '../constant/colors.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Row(children: [
          Image.asset(
            "res/img/pizza.png",
            color: ThemeColor.yellow(),
          ),
          const SizedBox(
            width: 15,
          ),
          const Expanded(child: Text("Ayam Geprek")),
          const Text("Rp. 150000")
        ]),
      ),
    );
  }
}
