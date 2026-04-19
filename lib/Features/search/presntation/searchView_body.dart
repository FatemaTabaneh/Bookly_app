import 'package:bookly_app/Features/home/presntation/views/widgets/card.dart';
import 'package:bookly_app/Features/search/presntation/widgets/custom_TextField.dart';
import 'package:bookly_app/Features/search/presntation/widgets/result_ListView_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchView_body extends StatelessWidget {
  const searchView_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios)),
          CustomTextField(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text('Search Result',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
            ),
          ),
          Expanded(child: result_ListView()),
        ],
      ),
    );
  }
}


