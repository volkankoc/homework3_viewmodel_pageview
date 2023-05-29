import 'package:flutter/material.dart';
import 'package:homework3_viewmodel_pageview/navbar/navbar_view_model.dart';
import 'package:homework3_viewmodel_pageview/page/page_view_model.dart';
import 'package:homework3_viewmodel_pageview/provider/page_provider.dart';
import 'package:provider/provider.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final pageList = PageViewModel();
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          onPageChanged: _onPageChanged,
          controller: _pageController,
          children: pageList.pageList.map((e) => e.page).toList(),
        ),
        bottomNavigationBar: _navBar());
  }

  void _onPageChanged(value) {
    context.read<PageProvider>().changePage(value);
    print(context.read<PageProvider>().getCurrentIndex().toString());
   
  }

  BottomNavigationBar _navBar() {
    return BottomNavigationBar(
        currentIndex: context.watch<PageProvider>().getCurrentIndex(),
        onTap: (value) {
          context.read<PageProvider>().changePage(value);
          _pageController.jumpToPage(value);
        
        },
        items: NavbarViewModel.navbarList
            .map((e) =>
                BottomNavigationBarItem(icon: Icon(e.iconData), label: e.label))
            .toList());
  }
}
