import 'package:e_commerce/features/dashboard/home/ui/widgets/home_header_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [HomeHeaderContainer(child: Container())]),
      ),
    );
  }
}
