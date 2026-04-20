import 'package:bookly_app/Api/apiServic.dart';
import 'package:bookly_app/Features/home/data/repos/homeRepoImpl.dart';
import 'package:bookly_app/Features/home/presntation/manger/bestSellerBooks/featured_best_seller_cubit.dart';
import 'package:bookly_app/Features/home/presntation/manger/featuredBooks/featured_books_cubit.dart';
import 'package:bookly_app/appRouter.dart';
import 'package:bookly_app/const.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  return runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(homeRepo: Homerepoimpl(ApiService(Dio())))
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => FeaturedBestSellerCubit(
            homeRepo: Homerepoimpl(ApiService(Dio()))..fetchBestSellerBooks(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
