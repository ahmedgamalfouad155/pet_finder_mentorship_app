import 'package:cat_api/core/theme/thems.dart';
import 'package:cat_api/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart';
import 'package:cat_api/features/nav_bar/presentation/view/nav_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat Api App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => NavBarCubit(),
        child: const NavBarScreen(),
      ),
    );
  }
}
