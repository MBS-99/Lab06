import 'package:flutter/material.dart';

class MyChoice extends StatefulWidget {
  const MyChoice(this.choice, this.right_choice);

  final String? choice;
  final String? right_choice;

  @override
  State<MyChoice> createState() => _MyChoiceState();
}

class _MyChoiceState extends State<MyChoice> {
  IconData MyIcone = Icons.laptop;
  Color MyIconeColor = Color.fromARGB(255, 81, 159, 206);
  Color MyColor = Color.fromARGB(255, 104, 104, 104);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.choice == widget.right_choice) {
            MyColor = Color.fromARGB(255, 4, 115, 8);
            MyIcone = Icons.check;
            MyIconeColor = Color.fromARGB(255, 4, 115, 8);
          } else {
            MyColor = Colors.red;
            MyIcone = Icons.close;
            MyIconeColor = Colors.red;
          }
        });
      },
      child: Container(
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(border: Border.all(width: 2, color: MyColor)),
        padding: const EdgeInsets.all(3.0),
        margin: const EdgeInsets.all(15.0),
        child: ListTile(
          title: Text(
            widget.choice!,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontFamily: "Schyler"),
          ),
          trailing: Icon(
            MyIcone,
            color: MyIconeColor,
          ),
        ),
      ),
    );
  }
}
