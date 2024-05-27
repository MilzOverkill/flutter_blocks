import 'package:flutter/material.dart';
import 'package:flutter_blocks/features/home/models/home_product_data_model.dart';


class ProductTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  const ProductTileWidget({super.key, required this.productDataModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black)
      ),


      child: Column(children: [
        Container(
          height: 200,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image:NetworkImage(productDataModel.imageUrl) )
            
          ),
        ),
        Text(productDataModel.name),
        Text(productDataModel.description)
      ]),
    );
  }
}
