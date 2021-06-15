import 'package:flutter/material.dart';

class Chartbar extends StatelessWidget {
  final String label;
  final double SpendingAmount;
  final double SpendingPctofTotal;

  Chartbar(this.label, this.SpendingAmount, this.SpendingPctofTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 20.0,
            child: FittedBox(
                child: Text('₹ ${SpendingAmount.toStringAsFixed(0)}'))),
        SizedBox(height: 4.0),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              FractionallySizedBox(
                heightFactor: SpendingPctofTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(label),
      ],
    );
  }
}
