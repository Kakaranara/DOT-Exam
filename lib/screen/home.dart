import 'package:dot_test/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _fab(),
      body: SafeArea(
        child: ListView(
          children: [
            const Text(
              "Halo, User!",
            ),
            const Text("Jangan lupa ya hehe"),
            _space(),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: _bigBox(
                      color: ThemeColor.blue(),
                      text: "Pengeluaranmu Hari ini",
                      amount: 0),
                ),
                Expanded(
                  flex: 1,
                  child: _bigBox(
                      color: ThemeColor.green(),
                      text: "Pengeluaranmu bulan ini",
                      amount: 0),
                )
              ],
            ),
            _space(),
          ],
        ),
      ),
    );
  }

  Widget _categoryBox() {
    return Column();
  }

  Widget _bigBox(
      {required Color color, required String text, required int amount}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
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
          _space(),
          Text("Rp. $amount", style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }

  Widget _space() {
    return const SizedBox(
      height: 15,
    );
  }

  Widget _fab() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {},
    );
  }
}
