import 'package:flutter/material.dart';
import 'package:respon_dash/screens/dashboard/dashboard.dart';
import 'package:respon_dash/screens/main/controller/start_drawer_controller.dart';
import 'package:respon_dash/utils/responsive.dart';

import 'widgets/start_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StartDrawerController(
      child: Builder(
        builder: (context) {
          return Scaffold(
            key: StartDrawerController.of(context).drawerKey,
            drawer: const StartDrawer(),
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(MediaQuery.of(context).size.width))
                  const Expanded(child: StartDrawer()),
                const Expanded(flex: 4, child: DashboardScreen())
              ],
            ),
          );
        }
      ),
    );
  }
}
