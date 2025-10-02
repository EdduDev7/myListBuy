import 'package:flutter/material.dart';
import 'package:mylistbuy/components/add_bottom_sheet.dart';
import 'package:mylistbuy/view_models/AppViewModels.dart';
import 'package:provider/provider.dart';

class AddComprasModels extends StatelessWidget {
  const AddComprasModels({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Appviewmodels>(
      builder: (context, /* variavel criada*/ viewModels, child) {
        return SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            backgroundColor: viewModels.cor3,
            elevation: 5,
            onPressed: () {
              viewModels.bottomSheetBuilder(AddBottomSheet(), context);
            },
            child: Icon(Icons.add, color: Colors.white),
          ),
        );
      },
    );
  }
}
