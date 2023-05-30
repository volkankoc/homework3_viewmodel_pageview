import 'package:flutter/material.dart';
import 'package:homework3_viewmodel_pageview/navbar/navbar_view_model.dart';
import 'package:homework3_viewmodel_pageview/page/page_view_model.dart';
import 'package:homework3_viewmodel_pageview/provider/page_provider.dart';
import 'package:provider/provider.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

  final pageList = PageViewModel();

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageView(context),
        bottomNavigationBar: _navBar(context));
  }

  PageView _pageView(BuildContext context) {
    return PageView(
        onPageChanged: (value) {
          context.read<PageProvider>().changePage(value);
          print(context.read<PageProvider>().getCurrentIndex().toString());
        },
        controller: _pageController,
        children: pageList.pageList.map((e) => e.page).toList(),
      );
  }

  BottomNavigationBar _navBar(BuildContext context) {
    return BottomNavigationBar(
          currentIndex: context.watch<PageProvider>().getCurrentIndex(),
          onTap: (value) {
            context.read<PageProvider>().changePage(value);
            _pageController.jumpToPage(value);
          },
          items: NavbarViewModel.navbarList
              .map((e) => BottomNavigationBarItem(
                  icon: Icon(e.iconData), label: e.label))
              .toList());
  }
}
