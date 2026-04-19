import 'package:bookly_app/Features/search/presntation/searchView_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchView extends StatelessWidget {
  const searchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: searchView_body()),
    );
  }
}
