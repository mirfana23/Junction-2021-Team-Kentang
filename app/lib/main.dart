import 'package:flutter/cupertino.dart';

//main pages
import './pages/home.dart';
import './pages/stats.dart';
import './pages/forecast.dart';

//navbar and topbar
import './core/navbar.dart';
import './core/topbar.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final String appTitle = "Kentang App";
  final routing = {
    '/': (BuildContext context) {
      return CupertinoTabScaffold(
        tabBar: navbar(),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(builder: (BuildContext context) {
            return CupertinoPageScaffold(
                navigationBar: topbar("Home"), child: Home());
          });
        },
      );
    },
    '/stats': (BuildContext context) {
      return CupertinoTabScaffold(
        tabBar: navbar(),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(builder: (BuildContext context) {
            return CupertinoPageScaffold(
                navigationBar: topbar("Stats"), child: Stats());
          });
        },
      );
    },
    '/forecast': (BuildContext context) {
      return CupertinoTabScaffold(
        tabBar: navbar(),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(builder: (BuildContext context) {
            return CupertinoPageScaffold(
                navigationBar: topbar("Forecast"), child: Forecast());
          });
        },
      );
    }
  };

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: appTitle, initialRoute: '/forecast', routes: routing);
  }
}
