import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app_comps/bloc/base_food_item_bloc.dart';

class ItemQuantityCustom extends StatefulWidget {
  final Widget? child;

  ItemQuantityCustom({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  _ItemQuantityCustomState createState() => _ItemQuantityCustomState();
}

class _ItemQuantityCustomState extends State<ItemQuantityCustom> {
  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<BaseFoodItemBloc>().state.numberOfItems.toString(),
    );
  }
}
