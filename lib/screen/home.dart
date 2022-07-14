import 'package:dot_test/constant/colors.dart';
import 'package:dot_test/shared_widget/big_box.dart';
import 'package:dot_test/shared_widget/category_box.dart';
import 'package:dot_test/shared_widget/expense_card.dart';
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
            _marginText(text: "Halo, User!"),
            _marginText(text: "Jangan lupa ya catat keuanganmu setiap hari!"),
            _space(),
            _headersBox(),
            _headline(text: "Pengeluaran berdasarkan kategori"),
            _categoryList(),
            _headline(text: "Hari ini"),
            const ExpenseCard(),
          ],
        ),
      ),
    );
  }

  Widget _headline({required String text}) {
    return _marginText(
        customMargin: const EdgeInsets.all(20),
        text: text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17));
  }

  Widget _marginText(
      {required String text,
      TextStyle? style,
      EdgeInsetsGeometry? customMargin}) {
    return Container(
      margin: customMargin ??
          const EdgeInsets.only(
            left: 20,
          ),
      child: Text(
        text,
        style: style,
      ),
    );
  }

  Widget _headersBox() {
    return Row(
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
