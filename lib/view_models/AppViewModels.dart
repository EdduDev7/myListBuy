import 'package:flutter/material.dart';
import 'package:mylistbuy/models/compras_models.dart';
import 'package:mylistbuy/models/usuarios_models.dart';

class Appviewmodels extends ChangeNotifier {
  List<Compras> itens = <Compras>[];
  Usuarios user = Usuarios('Eduardo Aparecido');

  Color cor1 = Colors.grey.shade300;
  Color cor2 = Colors.black12;
  Color cor3 = Colors.grey.shade700;
  Color cor4 = Colors.grey.shade800;

  void addCompras(Compras novaCompra) {
    itens.add(novaCompra);
    notifyListeners();
  }

  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.vertical(top: Radius.circular(30)),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) {
        return bottomSheetView;
      },
    );
  }
}
