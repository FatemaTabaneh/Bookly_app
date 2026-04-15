import 'package:bookly_app/Features/splash/presentation/views/widgets/spash_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: splash_view_body(),
    );
  }
}
