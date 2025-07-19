import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_mart/models/product_model/product_model.dart';
import 'package:grocery_mart/utils/my_button.dart';
import 'package:grocery_mart/view_model/cart_bloc/cart_bloc.dart';

class ProductBody extends StatelessWidget {final ProductModel productModel;
  const ProductBody({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              childrenPadding: const EdgeInsets.only(top: 16),
                title: Text('Product Detail', style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF181725),
                  fontSize: 16
                ),
                ),
              iconColor: Colors.black, // arrow icon color
              collapsedIconColor: Colors.black,
            children: [
              Text('Fruits are nutritious. Fruits may be good for weight loss. Fruits may be good for your heart. As part of a healtful and varied diet.', style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF7C7C7C),
                  fontSize: 13
              ),
              )
            ],
            ),
          ),
          Divider(),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              childrenPadding: const EdgeInsets.only(top: 16),
              title: Text('Nutritions', style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF181725),
                  fontSize: 16
              ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFFEBEBEB),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text('100gr', style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF181725),
                          fontSize: 9
                      ),
                      ),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
              iconColor: Colors.black, // arrow icon color
              collapsedIconColor: Colors.black,
              children: [
                Text('Nutritions Detail.', style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF7C7C7C),
                    fontSize: 13
                ),
                )
              ],
            ),
          ),
          Divider(),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              childrenPadding: const EdgeInsets.only(top: 16),
              title: Text('Review', style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF181725),
                  fontSize: 16
              ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Color(0xFFF3603F),),
                  Icon(Icons.star, color: Color(0xFFF3603F),),
                  Icon(Icons.star, color: Color(0xFFF3603F),),
                  Icon(Icons.star, color: Color(0xFFF3603F),),
                  Icon(Icons.star, color: Color(0xFFF3603F),),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
              iconColor: Colors.black, // arrow icon color
              collapsedIconColor: Colors.black,
              children: [
                Text('Reviews.', style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF7C7C7C),
                    fontSize: 13
                ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          BlocBuilder<CartBloc, CartState>(
            buildWhen: (previous, current) => previous.cartItems != current.cartItems,
            builder: (context, state) {
              return MyButton(text: 'Add To Basket', onPress: (){
                context.read<CartBloc>().add(AddToCart(productModel));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Added to cart'),
                  ),
                );
              });
            }
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}
