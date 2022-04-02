import 'package:flutter/material.dart';

class MyDrawerBody extends StatefulWidget {
  const MyDrawerBody({Key? key}) : super(key: key);

  @override
  State<MyDrawerBody> createState() => _MyDrawerBodyState();
}

class _MyDrawerBodyState extends State<MyDrawerBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          category("So'ngi yangiliklar"),
          category("Mahalliy"),
          category("Dunyo"),
          category("Texnologiyalar"),
          Divider(thickness: 1),
          category('Tanlangan Xabarlar', Colors.green),
          Divider(thickness: 1),
          category("Madaniyat"),
          category("Avto"),
          category("Sport"),
          category("Foto"),
        ],
      ),
    );
  }

  Widget category(String text, [Color givenColor = Colors.black]) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 40,
      margin: const EdgeInsets.only(left: 18),
      child: Text(
        text,
        style: TextStyle(
            color: givenColor, fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}
