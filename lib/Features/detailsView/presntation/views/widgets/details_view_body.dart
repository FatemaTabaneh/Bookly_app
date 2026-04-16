import 'package:bookly_app/Features/detailsView/presntation/views/widgets/app_bar_widget.dart';
import 'package:bookly_app/Features/detailsView/presntation/views/widgets/basicImage_widget.dart';
import 'package:bookly_app/Features/detailsView/presntation/views/widgets/buttomListView.dart';
import 'package:bookly_app/Features/detailsView/presntation/views/widgets/item_Row.dart';
import 'package:bookly_app/Features/detailsView/presntation/views/widgets/row_rate_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details_view_body extends StatelessWidget {
  const details_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50),
          app_Bar(),
          basic_ImageWidget(),
          Text(
            'The jungle Book',
            style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 30),
          ),
          SizedBox(height: 5,),
          Text(
            'Rudyard Kipling',
            style: TextStyle(fontSize: 20, fontFamily: 'Roboto Slab'),
          ),
          SizedBox(height: 5,),
          row_Rate(),
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
