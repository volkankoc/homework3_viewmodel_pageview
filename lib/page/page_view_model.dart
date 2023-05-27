import 'package:homework3_viewmodel_pageview/home/home_view.dart';
import 'package:homework3_viewmodel_pageview/page/page_model.dart';
import 'package:homework3_viewmodel_pageview/profile/profile_view.dart';
import 'package:homework3_viewmodel_pageview/settings/settings_view.dart';

class PageViewModel {
  final List<PageModel> pageList = [
    PageModel(page: const HomeView()),
    PageModel(page: const SettingsView()),
    PageModel(page: const ProfileView())
  ];
}
