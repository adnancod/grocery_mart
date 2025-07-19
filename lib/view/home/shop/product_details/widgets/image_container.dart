import 'package:flutter/material.dart';

import '../../../../../models/product_model/product_model.dart';

class ImageContainer extends StatelessWidget {
  final ProductModel product;
  const ImageContainer({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      decoration: BoxDecoration(
        color: Color(0xFFF2F3F2),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.file_download_outlined))
                ],
              ),
            ),
          ),
          Image.asset(product.imageUrl, height: 200, width: 330)
        ],
      ),
    );
  }
}
