import 'package:flutter/material.dart';

class NestedScreenNavigator extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey();
  final Widget navigationItem;

  NestedScreenNavigator(this.navigationItem);

  @override
  State<StatefulWidget> createState() => new NestedScreenNavigatorState();
}

class NestedScreenNavigatorState extends State<NestedScreenNavigator> {

  Future<bool> didPopRoute() async {
    final NavigatorState navigator = widget.navigatorKey.currentState;
    assert(navigator != null);
    return await navigator.maybePop();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return !await didPopRoute();
        },
        child: _buildNavigator()
    );
  }

  Navigator _buildNavigator() {
    return Navigator(
      key: widget.navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder = (BuildContext _) => widget.navigationItem;
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }

}