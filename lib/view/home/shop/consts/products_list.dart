import '../../../../models/product_model/product_model.dart';

class ProductsList{

  static final List<ProductModel> exclusiveOffers = [
    ProductModel(
      id: '1',
      imageUrl: 'assets/home/shop/banana.png',
      title: 'Organic Bananas',
      description: '7pcs, Priceg',
      price: 4.99,
    ),
    ProductModel(
      id: '2',
      imageUrl: 'assets/home/shop/apple.png',
      title: 'Red Apple',
      description: '1kg, Priceg',
      price: 4.99,
    ),
    ProductModel(
      id: '3',
      imageUrl: 'assets/home/shop/bell_pepper_red.png',
      title: 'Bell Pepper Red',
      description: '1kg, Priceg',
      price: 4.99,
    ),
  ];

  static final List<ProductModel> bestSelling = [
    ProductModel(
      id: '4',
      imageUrl: 'assets/home/shop/bell_pepper_red.png',
      title: 'Bell Pepper Red',
      description: '1kg, Priceg',
      price: 4.99,
    ),
    ProductModel(
      id: '5',
      imageUrl: 'assets/home/shop/ginger.png',
      title: 'Ginger',
      description: '250gm, Priceg',
      price: 4.99,
    ),
    ProductModel(
      id: '6',
      imageUrl: 'assets/home/shop/banana.png',
      title: 'Organic Bananas',
      description: '7pcs, Priceg',
      price: 4.99,
    ),
  ];

  static final List<ProductModel> groceries = [
    ProductModel(
      id: '7',
      imageUrl: 'assets/home/shop/beef.png',
      title: 'Beef Bone',
      description: '1kg, Priceg',
      price: 4.99,
    ),
    ProductModel(
      id: '8',
      imageUrl: 'assets/home/shop/chicken.png',
      title: 'Broiler Chicken',
      description: '1kg, Priceg',
      price: 4.99,
    ),
    ProductModel(
      id: '9',
      imageUrl: 'assets/home/shop/banana.png',
      title: 'Organic Bananas',
      description: '7pcs, Priceg',
      price: 4.99,
    ),
  ];

}