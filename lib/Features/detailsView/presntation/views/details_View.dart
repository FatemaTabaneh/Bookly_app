import 'package:bookly_app/Features/detailsView/presntation/views/widgets/details_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details_view extends StatelessWidget {
  static String id='details_view';
  const details_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: details_view_body(),
      ),
    );
  }
}
