import 'package:bookly_app/Features/detailsView/presntation/views/details_View.dart';
import 'package:bookly_app/Features/home/presntation/views/homeView.dart';
import 'package:bookly_app/Features/splash/presentation/views/SplashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String KHomeView='/homeView';
  static String KDetailsView='/detailsView';
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
      GoRoute(
        path: KDetailsView,
        builder: ( context,  state) {
          return details_view();
        },
      ),
    ],
  );
}