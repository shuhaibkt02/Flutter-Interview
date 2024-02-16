import 'package:flutter/material.dart';

/// You’re making a shopping app called RubberBaby, which sells dolls.
/// Unfortunately, you’ve run into a problem on the order page.
/// If a customer makes one order for blue dolls and another order for red dolls but then tries to delete the blue doll order,
///  the red doll order is wrong.

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool isShowing = true;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        child: (const Text('Delete blue')),
        onPressed: () {
          setState(() {
            isShowing = !isShowing;
          });
        },
      ),
      if (isShowing)
        Container(
          color: Colors.blue,
          height: 40,
        ),
      Container(
        color: Colors.red,
        height: 40,
      ),
    ]);
  }
}
