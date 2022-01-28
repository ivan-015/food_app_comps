part of 'base_food_item_bloc.dart';

@immutable
abstract class BaseFoodItemEvent {}

class AddFoodItem extends BaseFoodItemEvent {}
class RemoveFoodItem extends BaseFoodItemEvent {}