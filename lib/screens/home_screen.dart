import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';

import '../themes/app_theme.dart';
//import 'package:fl_components/screens/screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
          itemCount: menuOptions.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
            leading: Icon(
              menuOptions[index].icon,
              color: AppTheme.primary,
            ),
            title: Text(menuOptions[index].name.toString()),
            onTap: () {
              Navigator.pushNamed(context, menuOptions[index].route);
              // final route = MaterialPageRoute(
              //   builder: (context) => const ListView1Screen(),
              // );
              // Navigator.push(context, route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
