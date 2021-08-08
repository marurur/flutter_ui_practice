import 'package:flutter/material.dart';

class TileBadge extends StatelessWidget {
  const TileBadge({
    Key? key,
    this.index,
  }) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      child: Center(child: Text('$index')),
    );
  }
}
