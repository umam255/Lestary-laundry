import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lestari_laundry/api/presentation/navigation/routes.dart';
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/kilogram_screen/cubit/kilogram_cubit.dart';
import 'package:lestari_laundry/api/utility/commons.dart';
import 'package:lestari_laundry/src/screens/screens.dart';

final GoRouter routerApi = GoRouter(
  initialLocation: '/home-screen',
  routes: [
    GoRoute(
      path: '/onboard-screen',
      name: Routes.onboardScreen,
      builder: (context, state) => const OnboardScreen(),
    ),
    GoRoute(
      path: '/login-screen',
      name: Routes.loginScreen,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register-screen',
      name: Routes.registerScreen,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/home-screen',
      name: Routes.homeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/kilogram-screen',
      name: Routes.kilogramScreen,
      builder: (context, state) {
        BlocProvider.of<KilogramCubit>(context).fetchKilogram();
        // fetchKilogram(
        //   header:
        //       '47ee34f8e9e5067d801adef68086b7b1e10748d039dcf3aa0a9180b6f23a338f1cc6081c4552d0871829e896521772470ff7e5eeeeb5a03dddac97ae6ff5d7b2ed9d46990fcfe5964ce922d602a4c640f8d57db69dfd083f3b9c649e736f67876eb851b176ccbdc19f8a2c2413fcdb6be79c998101f3c271bfb178b66ede8a4f',
        // );
        return KilogramScreen();
      },
    ),
    GoRoute(
      path: '/satuan-screen',
      name: Routes.satuanScreen,
      builder: (context, state) => const SatuanScreen(),
    ),
  ],
);
