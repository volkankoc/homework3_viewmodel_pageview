import 'package:flutter/material.dart';
import 'package:homework3_viewmodel_pageview/provider/user_provider.dart';
import 'package:provider/provider.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.pink,
        height: 400,
        width: 500,
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.read<UserProvider>().changeUsername("ahmet");
              },
              child: const Text("Change Username"),
            ),
            Text(context.watch<UserProvider>().getUsername().toString()),
          ],
        ),
      ),
    );
  }
}
