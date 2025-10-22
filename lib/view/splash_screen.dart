import 'package:flutter/material.dart';
import 'package:mylistbuy/view/mainScreen.dart';
import 'package:mylistbuy/view_models/AppViewModels.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Appviewmodels>(
      builder: (context, viewModels, child) {
        return Scaffold(
          backgroundColor: viewModels.cor4,
          body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          viewModels.VerdeClaro,
                          viewModels.VerdeAzulado,
                          viewModels.AzulMedio,
                        ],
                      ),
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/mylistbuy_lo.png',
                          height: 180,
                        ),
                        SizedBox(height: 15),
                        Text(
                          'SUA LISTA DE COMPRAS NA PALMA DA MÃO',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Mainscreen()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(color: viewModels.cor4),
                      child: Center(
                        child: Container(
                          height: 60,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                viewModels.VerdeClaro,
                                viewModels.VerdeAzulado,
                                viewModels.AzulMedio,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'CLIQUE PARA CONTINUAR',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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
