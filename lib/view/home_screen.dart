import 'package:custom_navigator_bar/view/screen1.dart';
import 'package:custom_navigator_bar/view/screen2.dart';
import 'package:custom_navigator_bar/view/screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybottombar/mybottombar.dart';

import '../view_model/home_screen_bloc/home_screen_bloc.dart';
import '../view_model/home_screen_bloc/home_screen_event.dart';
import '../view_model/home_screen_bloc/home_screen_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {

    List<Widget> pages = [
    Screen1(),
      Screen2(),
    Screen3()
    ];
    return BlocBuilder<HomeBloc, HomeState>(
        bloc:  homeBloc,
        builder: (context, state) {
          int selectedIndex = 0;
          if (state is UpdatedState) {
            selectedIndex = state.selectedIndex;
          }
          return Scaffold(
            body: pages[selectedIndex],
            bottomNavigationBar:MyBottomBar(
                items: [
                  NavBarItem(icon: Icons.home_filled, label: "Home"),
                  NavBarItem(icon: Icons.person, label: "Profile"),
                  NavBarItem(icon: Icons.settings ,label: "Setting")
                ],
                currentIndex: selectedIndex,
                onTap: (index){
                  homeBloc.add(UpdateIndexEvent(index));
                })
          );
        });
  }
}