import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/home_page.dart';
import 'package:flutter_ui_practice/pages/alert_dialog_page.dart';
import 'package:flutter_ui_practice/pages/stacked_grid_view_page.dart';
import 'package:flutter_ui_practice/pages/stacked_list_view_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings settings) {
        final pushRoutes = {
          HomePage.routeName: (BuildContext context) => const HomePage(),
          StackedGridViewPage.routeName: (BuildContext context) =>
              const StackedGridViewPage(),
          StackedListViewPage.routeName: (BuildContext context) =>
              const StackedListViewPage(),
          AlertDialogPage.routeName: (BuildContext context) =>
              const AlertDialogPage(),
        };
        final pushPage = pushRoutes[settings.name]!;
        return MaterialPageRoute<void>(
          settings: settings,
          builder: pushPage,
        );
      },
    );
  }
}
