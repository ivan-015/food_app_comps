import 'package:flutter/material.dart';
import 'package:food_app_comps/bloc/base_food_item_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MinusButtonCustom extends StatefulWidget {
  final Widget? child;

  MinusButtonCustom({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  _MinusButtonCustomState createState() => _MinusButtonCustomState();
}

class _MinusButtonCustomState extends State<MinusButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: widget.child!,
      onTap: () => context.read<BaseFoodItemBloc>().add(
            RemoveFoodItem(),
          ),
    );
  }
}
