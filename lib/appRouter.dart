import 'package:bookly_app/Api/apiServic.dart';
import 'package:bookly_app/Features/detailsView/data/repos/detailsViewRepoImp.dart';
import 'package:bookly_app/Features/detailsView/presntation/Cubit/details_view_cubit.dart';
import 'package:bookly_app/Features/detailsView/presntation/views/details_View.dart';
import 'package:bookly_app/Features/home/data/models/bookModel.dart';
import 'package:bookly_app/Features/home/presntation/views/homeView.dart';
import 'package:bookly_app/Features/search/presntation/SearchView.dart';
import 'package:bookly_app/Features/splash/presentation/views/SplashView.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String KHomeView='/homeView';
  static String KDetailsView='/detailsView';
  static String KSearchView='/searchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: ( context,  state) {
          return Splashview();
        },
      ),
      GoRoute(
        path:KHomeView ,
        builder: ( context,  state) {
          return homeView();
        },
      ),
      /*GoRoute(
        path: AppRouter.KDetailsView,
        name: AppRouter.KDetailsView,
        builder: (context, state) {
          final bookModel = state.extra as BookModel;
          return details_view(bookModel: bookModel);
        },
      ),*/
      GoRoute(
        path:KSearchView ,
        builder: ( context,  state) {
          return searchView();
        },
      ),
      GoRoute(
        path: AppRouter.KDetailsView,
        name: AppRouter.KDetailsView,
        builder: (context, state) {
          final bookModel = state.extra as BookModel;

          return BlocProvider(
            create: (context) => DetailsViewCubit(
              detailsViewRepo: DetailsViewRepoImp(ApiService(Dio())),
            )..fetchSimilarBooks(
              category: bookModel.volumeInfo.categories?.isNotEmpty == true
                  ? bookModel.volumeInfo.categories![0]
                  : 'programming',
            ),
            child: details_view(bookModel: bookModel),
          );
        },
      ),
    ],
  );
}