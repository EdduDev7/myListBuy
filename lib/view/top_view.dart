import 'package:flutter/material.dart';
import 'package:mylistbuy/view_models/AppViewModels.dart';
import 'package:provider/provider.dart';

class TopView extends StatelessWidget {
  const TopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Appviewmodels>(
      builder: (context, viewModels, child) {
        return Scaffold(
          backgroundColor: viewModels.cor3,
          body: Container(
            child: Center(
              child: Image.asset(
                'assets/images/texto_mylistbuy.png',
                height: 60,
              ),
            ),
          ),
        );
      },
    );
  }
}
