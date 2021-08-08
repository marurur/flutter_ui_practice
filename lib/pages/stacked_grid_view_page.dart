import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/widgets/tile_badge.dart';

class StackedGridViewPage extends StatelessWidget {
  const StackedGridViewPage({Key? key}) : super(key: key);
  static const routeName = '/grid';
  static const title = 'Stacked GridView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: 30,
          itemBuilder: (context, index) {
            return StackedGridTile(index);
          },
        ),
      ),
    );
  }
}

class StackedGridTile extends StatelessWidget {
  const StackedGridTile(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 80,
          color: Colors.grey.shade300,
          child: Center(
            child: Text('$index'),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: TileBadge(index: index),
        ),
      ],
    );
  }
}
