import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_blocks/data/grocery_data.dart';
import 'package:flutter_blocks/features/home/models/home_product_data_model.dart';
import 'package:flutter_blocks/features/home/ui/home.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    //on this event pass this state
    //handling methods
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeProductWishListButtonClickedEvent>(
        homeProductWishListButtonClickedEvent);
    on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);
    on<HomeWishListButtonNavigateEvent>(homeWishListButtonNavigateEvent);
    on<HomeCartButtonNavigateEvent>(homeCartButtonNavigateEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(HomeLoadSuccessState(
        products: GroceryData.groceryProducts
            .map((e) => ProductDataModel(
                id: e['id'],
                name: e['name'],
                price: e['price'],
                description: e['description'],
                imageUrl: e['imageUrl']))
            .toList()));
  }

 

  FutureOr<void> homeProductWishListButtonClickedEvent(
      HomeProductWishListButtonClickedEvent, Emitter<HomeState> emit) {
    print('wishlist Product clicked');
  }

  FutureOr<void> homeProductCartButtonClickedEvent(
      HomeProductCardButtonButtonClickedEvent, Emitter<HomeState> emit) {
    print('Cart Product clicked');
  }

  FutureOr<void> homeWishListButtonNavigateEvent(
      HomeWishListButtonNavigateEvent event, Emitter<HomeState> emit) {
    print('Wishlist Navigate clicked');
    emit(
        HomeNavigateToWishlistPageActionState()); //action states- take some action
  }

  FutureOr<void> homeCartButtonNavigateEvent(
      HomeCartButtonNavigateEvent event, Emitter<HomeState> emit) {
    print('Cart Navigate clicked');
    emit(
        HomeNavigateToCartPageActionState()); // action states - taake some action
  }
}
