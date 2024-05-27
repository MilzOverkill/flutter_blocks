import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_blocks/data/cart_items.dart';
import 'package:flutter_blocks/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

import '../../home/models/home_product_data_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveFromCartEvent>(cartRemoveFromCartEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cartItems));
  }

  FutureOr<void> cartRemoveFromCartEvent(
      CartRemoveFromCartEvent event, Emitter<CartState> emit) {
    cartItems.remove(event.productDataModel);

    emit(CartSuccessState(cartItems: cartItems));
  }
}
