import 'package:flutter/material.dart';
import 'package:mylistbuy/view/add_compras_models.dart';
import 'package:mylistbuy/view/compras_list_view.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(flex: 1, child: Container(color: Colors.red)),
            Expanded(flex: 1, child: Container(color: Colors.green)),
            Expanded(flex: 7, child: ComprasListView()),
          ],
        ),
      ),
      floatingActionButton: const AddComprasModels(),
    );
  }
}
