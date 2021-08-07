import 'package:flutter/material.dart';

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
            return StackedGridTile();
          },
        ),
      ),
    );
  }
}

class StackedGridTile extends StatelessWidget {
  const StackedGridTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.grey.shade300,
    );
  }
}
