import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final double value;

  const Indicator({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26,
      child: Stack(
        children: [

          Container(
            height: 8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
          ),

          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: value / 2,
            child: Container(
              height: 8,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }}