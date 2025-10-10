import 'package:flutter/material.dart';
import 'package:mylistbuy/models/compras_models.dart';
import 'package:mylistbuy/models/usuarios_models.dart';

class Appviewmodels extends ChangeNotifier {
  List<Compras> itens = <Compras>[];
  Usuarios user = Usuarios('Eduardo Aparecido');
  Color cor4 = Color(0xffdfdfdf);
  Color cor3 = Color(0xffc0c0c0);
  Color cor2 = Color(0xff969696);
  Color cor1 = Color(0xff808080);

  int get numCompras => itens.length;

  void addCompras(Compras novaCompra) {
    itens.add(novaCompra);
    notifyListeners();
  }

  void removeCompras(Compras removerCompra) {
    itens.remove(removerCompra);
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
