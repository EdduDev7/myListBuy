import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mylistbuy/models/compras_models.dart';
import 'package:mylistbuy/view_models/AppViewModels.dart';
import 'package:provider/provider.dart';

class AddBottomSheet extends StatelessWidget {
  AddBottomSheet({super.key});

  final FormKey = GlobalKey<FormState>();
  final TextEditingController controllerProduto = TextEditingController();
  final TextEditingController controllerQuantidade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<Appviewmodels>(
      builder: (context, viewModels, child) {
        return Container(
          color: viewModels.cor1,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                  width: 300,
                  child: TextFormField(
                    onFieldSubmitted: (value) {
                      if (controllerProduto.text.isNotEmpty) {
                        Compras novaCompra = Compras(
                          controllerProduto.text,
                          false,
                          controllerQuantidade.text,
                        );
                        viewModels.addCompras(novaCompra);
                        controllerProduto.clear();
                        controllerQuantidade.clear();
                        Navigator.pop(context);
                      }
                    },
                    autofocus: true,
                    autocorrect: false,
                    controller: controllerProduto,
                    //decoraçao do formulario
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: viewModels.cor2,

                      labelText: 'Produto',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode estar vazio';
                      }
                      return null;
                    },
                  ),
                ),

                SizedBox(height: 8),
                //segundo text field
                SizedBox(
                  height: 40,
                  width: 300,
                  child: TextFormField(
                    autofocus: true,
                    autocorrect: false,
                    controller: controllerQuantidade,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    //decoraçao do formulario
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: viewModels.cor2,
                      labelText: 'Quantidade',
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode estar vazio';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
