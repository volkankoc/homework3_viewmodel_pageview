import 'package:flutter/material.dart';
import 'package:homework3_viewmodel_pageview/page/page_view_model.dart';


class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final pageList = PageViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: pageList.pageList.map((e) => e.page).toList(),
      ),
    );
  }
}
