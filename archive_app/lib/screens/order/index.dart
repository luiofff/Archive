import 'package:flutter/material.dart';

class SelectOrderType extends StatelessWidget {
  const SelectOrderType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/order/byCourier');
              },
              child: const Text("Заказать курьером")),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/order/inOffice');
              },
              child: const Text("Записаться в офис"))
        ],
      )),
    );
  }
}
