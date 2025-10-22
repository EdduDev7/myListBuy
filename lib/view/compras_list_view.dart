// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:flutter/material.dart';
import 'package:mylistbuy/view_models/AppViewModels.dart';
import 'package:provider/provider.dart';

class ComprasListView extends StatelessWidget {
  const ComprasListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Appviewmodels>(
      builder: (context, viewModels, child) {
        return Container(
          padding: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: viewModels.cor4,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(height: 15);
            },
            itemCount: viewModels.numCompras,
            itemBuilder: (context, index) {
              return Card(
                color: viewModels.cor3,
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: ListTile(
                  leading: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                    value: viewModels.itens[index].completado,
                    onChanged: (value) {
                      viewModels.itens[index].completado = value ?? false;
                      // ignore: invalid_use_of_protected_member
                      viewModels.notifyListeners();
                    },
                    activeColor: viewModels.VerdeClaro,
                    checkColor: Colors.black,
                  ),
                  title: Text(
                    viewModels.itens[index].produto,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "quantidade: ${viewModels.itens[index].quantidade}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      viewModels.removeCompras(viewModels.itens[index]);
                    },
                    icon: Icon(Icons.delete, color: viewModels.AzulMedio),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
