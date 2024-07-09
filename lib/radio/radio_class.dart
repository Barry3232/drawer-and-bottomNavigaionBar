
import 'package:flutter/material.dart';

enum ProductTypeEnum { Downloadable, Deliverable }

class MyRadioButton extends StatelessWidget{
  MyRadioButton({super.key,
    required this.title,
    required this.value,
    required this.productTypeEnum,
    required this.onChanged,
  });


  String title;
  ProductTypeEnum value;
  ProductTypeEnum? productTypeEnum;
  Function(ProductTypeEnum?)? onChanged;




  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
      RadioListTile<ProductTypeEnum>(
          tileColor: Colors.blueGrey,
          dense: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)),
          contentPadding: const EdgeInsets.all(0.0),

          value: ProductTypeEnum.Deliverable,
          groupValue: productTypeEnum,
          title: Text(ProductTypeEnum.Deliverable.name),
          onChanged: onChanged
      ),
    );

  }

}