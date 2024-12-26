import 'package:flutter/material.dart';
import 'package:satudata/components/MLBottomNavigationBarWidget.dart';
import 'package:satudata/fragments/MLCalendarFragment.dart';
import 'package:satudata/fragments/MLChatFragment.dart';
import 'package:satudata/fragments/MLHomeFragment.dart';
import 'package:satudata/fragments/MLNotificationFragment.dart';
import 'package:satudata/fragments/MLProfileFragemnt.dart';
import 'package:satudata/utils/MLColors.dart';
import 'package:satudata/utils/MLCommon.dart';

class MLDashboardScreen extends StatefulWidget {
  static String tag = '/MLDashboardScreen';

  @override
  _MLDashboardScreenState createState() => _MLDashboardScreenState();
}

class _MLDashboardScreenState extends State<MLDashboardScreen> {
  int currentWidget = 0;
  List<Widget> widgets = [
    MLHomeFragment(),
    MLChatFragment(),
    MLCalendarFragment(),
    MLNotificationFragment(),
    MLProfileFragment(),
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void dispose() {
    changeStatusColor(mlPrimaryColor);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: widgets[currentWidget],
        bottomNavigationBar: Container(color: Colors.white, child: showBottomDrawer()),
      ),
    );
  }

  Widget showBottomDrawer() {
    return MLBottomNavigationBarWidget(
      index: currentWidget,
      onTap: (index) {
        setState(() {});
        currentWidget = index;
      },
    );
  }
}
