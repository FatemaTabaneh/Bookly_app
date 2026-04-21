import 'package:bookly_app/Features/detailsView/presntation/views/widgets/details_view_body.dart';
import 'package:bookly_app/Features/home/data/models/bookModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details_view extends StatelessWidget {
  static String id='details_view';
  const details_view({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: details_view_body(bookModel: bookModel),
      ),
    );
  }
}
