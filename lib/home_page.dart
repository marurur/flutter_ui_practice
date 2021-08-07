import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/pages/stacked_grid_view_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/';
  static const title = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        children: [
          ListTile(
            title: Text(StackedGridViewPage.title),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.of(context).pushNamed(
              StackedGridViewPage.routeName,
            ),
          ),
        ],
      ),
    );
  }
}