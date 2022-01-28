import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'base_food_item_event.dart';
part 'base_food_item_state.dart';

class BaseFoodItemBloc extends Bloc<BaseFoodItemEvent, BaseFoodItemState> {
  BaseFoodItemBloc() : super(BaseFoodItemState()) {
    on<AddFoodItem>(onAddItem);
    on<RemoveFoodItem>(onRemoveItem);
  }

  void onAddItem(AddFoodItem event, Emitter emit) {
    print('onAddItem');
  }

  void onRemoveItem(RemoveFoodItem event, Emitter emit) {
    print('onRemoveItem');
  }
}
