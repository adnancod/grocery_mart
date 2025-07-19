// cart_event.dart
part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object?> get props => [];
}

class AddToCart extends CartEvent {
  final ProductModel product;
  const AddToCart(this.product);
  @override
  List<Object?> get props => [product];
}

class RemoveFromCart extends CartEvent {
  final String productId; // Changed from ProductModel to String
  const RemoveFromCart(this.productId);
  @override
  List<Object?> get props => [productId];
}

class IncrementQuantity extends CartEvent {
  final ProductModel product;
  const IncrementQuantity(this.product);
  @override
  List<Object?> get props => [product];
}

class DecrementQuantity extends CartEvent {
  final ProductModel product;
  const DecrementQuantity(this.product);
  @override
  List<Object?> get props => [product];
}

class ClearCart extends CartEvent {}