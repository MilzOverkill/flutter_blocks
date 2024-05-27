part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState {}

// the loading circle when starting the app - data to load
class HomeLoadingState extends HomeState {}

//circle should remove and the products should be visible
class HomeLoadSuccessState extends HomeState {
  final List<ProductDataModel> products;
  HomeLoadSuccessState({
    required this.products,
  });
}

//if an error occurs
class HomeErrorState extends HomeState {}

// action states that can happen in home page

//navigation from home to wish list page
class HomeNavigateToWishlistPageActionState extends HomeActionState {}

//navigation from home to cart page
class HomeNavigateToCartPageActionState extends HomeActionState {}


class HomeProductItemWishlistedActionState extends HomeActionState {}

class HomeProductItemCartedActionState extends HomeActionState {}