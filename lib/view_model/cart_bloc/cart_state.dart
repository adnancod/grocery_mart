// cart_state.dart
part of 'cart_bloc.dart';

class CartState extends Equatable {
  final Map<ProductModel, int> cartItems;

  const CartState({
    this.cartItems = const {},
  });

  CartState copyWith({
    Map<ProductModel, int>? cartItems,
  }) {
    return CartState(
      cartItems: cartItems ?? this.cartItems,
    );
  }

  @override
  List<Object?> get props => [cartItems];
}