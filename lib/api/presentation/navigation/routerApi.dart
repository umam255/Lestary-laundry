import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:lestari_laundry/api/presentation/navigation/routes.dart';
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/model_data_order/order_data.dart';
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/model_data_order/layanan_data.dart';
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/model_data_order/total_data.dart';
import 'package:lestari_laundry/api/presentation/pages/profile/cubit/profile_cubit.dart';
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
      builder: (context, state) {
        return HomeScreen();
      },
      routes: [
        GoRoute(
            path: 'kilogram-screen',
            name: Routes.kilogramScreen,
            builder: (context, state) {
              return KilogramScreen();
            },
            routes: [
              GoRoute(
                  path: 'detail-order-kilogram-screen',
                  name: Routes.detailOrderKilogramScreen,
                  builder: (context, state) {
                    BlocProvider.of<ProfileCubit>(context).fetchProfile();
                    return DetailOrderKilogram();
                  },
                  routes: [
                    GoRoute(
                        path: 'kgsummary-screen',
                        name: Routes.kgSummaryScreen,
                        builder: (context, state) {
                          return KgSumary();
                        },
                        routes: [
                          GoRoute(
                            path: 'kgpayment-screen',
                            name: Routes.kgPaymentScreen,
                            builder: (context, state) {
                              return KgPayment();
                            },
                          ),
                        ]),
                  ]),
            ]),
      ],
    ),
    GoRoute(
      path: '/satuan-screen',
      name: Routes.satuanScreen,
      builder: (context, state) => const SatuanScreen(),
    ),
  ],
);
