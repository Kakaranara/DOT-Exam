import 'package:dot_test/constant/colors.dart';
import 'package:dot_test/shared_widget/category_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/parser.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parser = SvgParser();
    try {
      parser.parse("res/img/car.svg", warningsAsErrors: true);
    } catch (e) {
      print("svg cant");
    }
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
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            _space(),
            _categoryList()
          ],
        ),
      ),
    );
  }

  Widget _categoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryBox(
            image: "pizza.png",
            color: ThemeColor.yellow(),
            tag: "Makanan",
          ),
          CategoryBox(
            image: "wifi.png",
            color: ThemeColor.lightBlue(),
            tag: "Internet",
          ),
          CategoryBox(
            image: "car.png",
            color: ThemeColor.purple(),
            tag: "Transportasion",
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _categoryBox() {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 140,
      width: 140,
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Image.asset("res/img/pizza.png"),
              ),
              Text("Makanan"),
              Text("Rp 70.000"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bigBox(
      {required Color color, required String text, required int amount}) {
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
