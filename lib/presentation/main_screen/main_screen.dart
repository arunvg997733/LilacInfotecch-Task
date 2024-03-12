import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lilacinfotechtask/application/bottom_nav/botton_nav_bloc.dart';
import 'package:lilacinfotechtask/core/font_size/font_size.dart';
import 'package:lilacinfotechtask/presentation/profile_screen/profile_screen.dart';
import 'package:lilacinfotechtask/presentation/video_player/video_player_screen.dart';
import 'package:lilacinfotechtask/presentation/widget/icon/icon_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottonNavBloc, BottonNavState>(
        builder: (context, state) {
          return page[state.index];
        },
      ),
      bottomNavigationBar: BlocBuilder<BottonNavBloc, BottonNavState>(
        builder: (context, state) {
          print('Tap');
          return BottomNavigationBar(
              currentIndex: state.index,
              selectedItemColor: Theme.of(context).colorScheme.tertiary,
              unselectedItemColor: Theme.of(context).colorScheme.secondary,
              backgroundColor: Theme.of(context).colorScheme.primary,
              onTap: (value) {
                context
                    .read<BottonNavBloc>()
                    .add(BottonNavEvent.onChange(Index: value));
              },
              items: [
                BottomNavigationBarItem(
                    icon: CustomIconWidget(
                      icon: Icons.home,
                      size: xLFont,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: CustomIconWidget(
                      icon: Icons.person,
                      size: xLFont,
                    ),
                    label: 'Profile'),
              ]);
        },
      ),
    );
  }
}

List<Widget> page = [VideoPlayerScreen(), const ProfileScreen()];
