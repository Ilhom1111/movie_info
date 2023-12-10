import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'blocs/detail_bloc/detail_bloc.dart';
import 'blocs/home_bloc/home_bloc.dart';
import 'screens/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(create: (_) => HomeBloc()),
        BlocProvider<DetailBloc>(create: (_) => DetailBloc()),
      ],
      child: ScreenUtilInit(
        designSize: Size(MediaQuery.sizeOf(context).width,
            MediaQuery.sizeOf(context).height),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Movie Info',
            theme: ThemeData(
              primarySwatch: Colors.grey,
              useMaterial3: false,
            ),
            home: child,
          );
        },
        child: const MyHomePage(),
      ),
    );
  }
}
