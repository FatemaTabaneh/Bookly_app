import 'package:bookly_app/Features/detailsView/presntation/views/widgets/app_bar_widget.dart';
import 'package:bookly_app/Features/detailsView/presntation/views/widgets/basicImage_widget.dart';
import 'package:bookly_app/Features/detailsView/presntation/views/widgets/buttomListView.dart';
import 'package:bookly_app/Features/detailsView/presntation/views/widgets/item_Row.dart';
import 'package:bookly_app/Features/detailsView/presntation/views/widgets/row_rate_widget.dart';
import 'package:bookly_app/Features/home/data/models/bookModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details_view_body extends StatelessWidget {
  const details_view_body({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50),
          app_Bar(),
          basic_ImageWidget(imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,),
          Text(
            textAlign: TextAlign.center,
            bookModel.volumeInfo.title!,
            style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 30,),
            maxLines: 1,
          ),
          SizedBox(height: 5,),
          Text(
            textAlign: TextAlign.center,
            bookModel.volumeInfo.authors![0] ?? 'UnKnow author',
            style: TextStyle(fontSize: 20, fontFamily: 'Roboto Slab'),
            maxLines: 1,
          ),
          SizedBox(height: 5,),
          row_Rate(rate:(bookModel.volumeInfo.averageRating??0).toDouble(),count: bookModel.volumeInfo.ratingsCount??0,),
          SizedBox(height: 20,),
          item_row(),
          SizedBox(height: 50,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(height: 10,),
          buttom_ListView(),
        ],
      ),
    );
  }
}
