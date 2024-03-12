import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lilacinfotechtask/application/auth/auth_bloc.dart';
import 'package:lilacinfotechtask/application/bottom_nav/botton_nav_bloc.dart';
import 'package:lilacinfotechtask/application/profile/profile_bloc.dart';
import 'package:lilacinfotechtask/core/theme/dart_theme/dark_theme.dart';
import 'package:lilacinfotechtask/core/theme/light_theme/light_theme.dart';
import 'package:lilacinfotechtask/presentation/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => BottonNavBloc(),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        home: const SplashScreen(),
      ),
    );
  }
}
