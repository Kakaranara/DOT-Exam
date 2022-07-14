import 'package:flutter/material.dart';

class AddExpensePage extends StatefulWidget {
  const AddExpensePage({Key? key}) : super(key: key);

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Pengeluaran Baru"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            _input(controller: controller),
            _listtile(onTap: () {
              show(context);
            }),
          ],
        ),
      ),
    );
  }

  void show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14), topRight: Radius.circular(14))),
        builder: (_) {
          return Container(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children: [
                Container(
                  color: Colors.grey,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Text("Pilih Kategori")),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(Icons.close))
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  Widget _listtile({required VoidCallback onTap}) {
    return ListTile(
      shape: RoundedRectangleBorder(
          side: BorderSide(), borderRadius: BorderRadius.circular(6)),
      onTap: onTap,
      title: Text("Makanan"),
      leading: Icon(Icons.add),
      trailing: CircleAvatar(
          backgroundColor: Colors.grey[400],
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          )),
    );
  }

  Widget _input({required TextEditingController controller}) {
    return Container(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: "Nama Pengeluaran",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6))),
      ),
    );
  }
}
