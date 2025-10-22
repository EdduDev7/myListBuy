import 'package:flutter/material.dart';
import 'package:mylistbuy/models/compras_models.dart';
import 'package:mylistbuy/models/usuarios_models.dart';

class Appviewmodels extends ChangeNotifier {
  List<Compras> itens = <Compras>[];
  Usuarios user = Usuarios('Eduardo Aparecido');

  Color VerdeClaro = Color(0xff2ECC71);
  Color VerdeAzulado = Color(0xff2ECC71);
  Color AzulMedio = Color(0xff3498DB);
  Color cor4 = Color(0xffffffff);
  Color cor3 = Color(0xffdfdfdf);
  Color cor2 = Color(0xffc0c0c0);
  Color cor1 = Color(0xffa0a0a0);

  int get numCompras => itens.length;

  int get numRestantes {
    int count = 0;
    for (var item in itens) {
      if (!item.completado) {
        count++;
      }
    }
    return count;
  }

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
