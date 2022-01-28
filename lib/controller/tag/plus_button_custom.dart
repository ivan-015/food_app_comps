import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app_comps/bloc/base_food_item_bloc.dart';

class PlusButtonCustom extends StatefulWidget {
  final Widget? child;

  PlusButtonCustom({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  _PlusButtonCustomState createState() => _PlusButtonCustomState();
}

class _PlusButtonCustomState extends State<PlusButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: widget.child!,
      onTap: () => context.read<BaseFoodItemBloc>().add(
            AddFoodItem(),
          ),
    );
  }
}
