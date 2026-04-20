import 'package:bookly_app/Features/home/presntation/views/widgets/Custom_app_bar.dart';
import 'package:bookly_app/Features/home/presntation/views/widgets/First_ListView.dart';
import 'package:bookly_app/Features/home/presntation/views/widgets/Scroll_ListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_view_body extends StatelessWidget {
  const home_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            CustomAppBar(),
            first_listView(),
            Text(
              'Best Seller',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Buttom_ListView(),
          ],
        ),
      ),
    );
  }
}
