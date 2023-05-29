import 'package:flutter/material.dart';

import 'navbar_model.dart';

class NavbarViewModel {
 static final List<NavbarModel> navbarList = [
   NavbarModel(Icons.home, 'Home'),
   NavbarModel(Icons.settings, 'Settings'),
   NavbarModel(Icons.person, 'Profile'),
 ];   
}