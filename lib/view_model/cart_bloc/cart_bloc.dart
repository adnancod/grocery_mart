// cart_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:grocery_mart/models/product_model/product_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState()) {
    on<AddToCart>(_onAddToCart);
    on<RemoveFromCart>(_onRemoveFromCart);
    on<IncrementQuantity>(_onIncrement);
    on<DecrementQuantity>(_onDecrement);
    on<ClearCart>(_onClearCart);
  }

  void _onAddToCart(AddToCart event, Emitter<CartState> emit) {
    final currentCart = Map<ProductModel, int>.from(state.cartItems);
    final currentQty = currentCart[event.product] ?? 0;
    currentCart[event.product] = currentQty + 1;
    emit(CartState(cartItems: currentCart));
  }

  void _onRemoveFromCart(RemoveFromCart event, Emitter<CartState> emit) {
    final currentCart = Map<ProductModel, int>.from(state.cartItems);
    currentCart.remove(event.productId); // Assuming productId is ProductModel
    emit(CartState(cartItems: currentCart));
  }

  void _onIncrement(IncrementQuantity event, Emitter<CartState> emit) {
    final currentCart = Map<ProductModel, int>.from(state.cartItems);
    final currentQty = currentCart[event.product] ?? 0;
    currentCart[event.product] = currentQty + 1;
    emit(CartState(cartItems: currentCart));
  }

  void _onDecrement(DecrementQuantity event, Emitter<CartState> emit) {
    final currentCart = Map<ProductModel, int>.from(state.cartItems);
    final currentQty = currentCart[event.product] ?? 0;
    if (currentQty > 0) {
      if (currentQty == 1) {
        currentCart.remove(event.product);
      } else {
        currentCart[event.product] = currentQty - 1;
      }
      emit(CartState(cartItems: currentCart));
    }
  }

  void _onClearCart(ClearCart event, Emitter<CartState> emit) {
    emit(const CartState());
  }
}