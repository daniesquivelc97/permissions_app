// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:permissions_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('Miscelaneos'),
              actions: [
                IconButton(
                  onPressed: () {
                    context.push('/permissions');
                  },
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
            MainMenu(),
          ],
        ),
      ),
    );
  }
}
