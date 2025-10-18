import 'package:cat_api/features/favorite/presentation/screens/favorite_screen.dart';
import 'package:cat_api/features/home/presentation/screens/home_screen.dart';
import 'package:cat_api/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart';
import 'package:cat_api/features/nav_bar/presentation/view/widgets/custom_buttom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  final List<Widget> pages = const [
    HomeScreen(),
    FavoriteScreen(),
    Center(child: Text("Search Page")),
    Center(child: Text("Profile Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: pages[currentIndex],
          bottomNavigationBar: CustomBottomNavBar(
            items: [
              NavBarItem(icon: Icons.home_outlined, label: "Home"),
              NavBarItem(icon: Icons.favorite, label: "Favorite"),
              NavBarItem(icon: Icons.chat, label: "Chat"),
              NavBarItem(icon: Icons.person, label: "Profile"),
            ],
            onTabSelected: (index) {},
          ),
        );
      },
    );
  }
}
