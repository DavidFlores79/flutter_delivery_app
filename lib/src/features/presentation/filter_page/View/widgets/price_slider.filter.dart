import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

class PriceFilter extends StatefulWidget {
  @override
  State<PriceFilter> createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  int _minPrice = 0;
  int _maxPrice = 500;
  RangeValues _values = const RangeValues(0, 500);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '\$ $_minPrice',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 260,
            child: RangeSlider(
              divisions: 30,
              values: _values,
              onChanged: (RangeValues newValues) {
                setState(() {
                  _values = newValues;
                  _minPrice = _values.start.round();
                  _maxPrice = _values.end.round();
                });
              },
              activeColor: darkOrange,
              inactiveColor: grey,
              min: 0,
              max: 1500,
            ),
          ),
          Text(
            '\$ $_maxPrice',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
