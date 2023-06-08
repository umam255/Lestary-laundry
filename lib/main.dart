import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lestari_laundry/api/data/repository/kilogram/kilogram_repository_impl.dart';
import 'package:lestari_laundry/api/data/repository/login/login_repository_impl.dart';
import 'package:lestari_laundry/api/presentation/navigation/routerApi.dart';
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/kilogram_screen/cubit/kilogram_cubit.dart';
import 'package:lestari_laundry/api/presentation/pages/login/cubit/login_cubit.dart';
import 'package:lestari_laundry/src/utilities/utilities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: colorName.primary,
      ),
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(LoginRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => KilogramCubit(KilogramRepositoryImpl()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Project Sosial Salt Academy',
        debugShowCheckedModeBanner: false,
        routerDelegate: routerApi.routerDelegate,
        routeInformationParser: routerApi.routeInformationParser,
        routeInformationProvider: routerApi.routeInformationProvider,
      ),
    );
  }
}
