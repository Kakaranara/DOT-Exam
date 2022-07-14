import 'package:dot_test/constant/colors.dart';
import 'package:dot_test/shared_widget/big_box.dart';
import 'package:dot_test/shared_widget/category_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/parser.dart';

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
                  child: BigBox(
                      color: ThemeColor.blue(),
                      text: "Pengeluaranmu Hari ini",
                      amount: 0),
                ),
                Expanded(
                  flex: 1,
                  child: BigBox(
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
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                "Pengeluaran berdasarkan kategori",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            _space(),
            _categoryList(),
            _list(),
          ],
        ),
      ),
    );
  }

  Widget _list() {
    return Card(
      margin: const EdgeInsets.all(20),
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
          Expanded(child: Text("Ayam Geprek")),
          Text("Rp. 150000")
        ]),
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
