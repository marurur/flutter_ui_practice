import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/home_page.dart';
import 'package:flutter_ui_practice/pages/stacked_grid_view_page.dart';
import 'package:flutter_ui_practice/pages/stacked_list_view_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings settings) {
        final Map<String, WidgetBuilder> pushRoutes = {
          HomePage.routeName: (_) => const HomePage(),
          StackedGridViewPage.routeName: (_) => const StackedGridViewPage(),
          StackedListViewPage.routeName: (_) => const StackedListViewPage(),
        };
        final pushPage = pushRoutes[settings.name]!;
        return MaterialPageRoute(
          settings: settings,
          builder: pushPage,
        );
      },
    );
  }
}
