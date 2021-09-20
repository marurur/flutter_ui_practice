import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/widgets/tile_badge.dart';

class StackedListViewPage extends StatelessWidget {
  const StackedListViewPage({Key? key}) : super(key: key);
  static const routeName = '/list';
  static const title = 'Stacked ListView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemCount: 30,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            return StackedListTile(index);
          },
        ),
      ),
    );
  }
}

class StackedListTile extends StatelessWidget {
  const StackedListTile(this.index, {Key? key}) : super(key: key);
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
          left: 10,
          top: 0,
          child: TileBadge(index: index),
        ),
      ],
    );
  }
}
