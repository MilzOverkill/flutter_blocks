part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}
class HomeInitialEvent extends HomeEvent{}

//this is the first event created
class HomeProductWishListButtonClickedEvent extends HomeEvent{

}

//2nd event 
class HomeProductCartButtonClickedEvent extends HomeEvent{

}

// 3rd event is to navigate to a different page -the wish list page
class HomeWishListButtonNavigateEvent extends HomeEvent{

}

//4th event is to navigate to the home cart page
class HomeCartButtonNavigateEvent extends HomeEvent{

}