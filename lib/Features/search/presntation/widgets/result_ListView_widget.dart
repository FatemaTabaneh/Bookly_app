import 'package:bookly_app/Features/home/presntation/views/widgets/card.dart';
import 'package:flutter/cupertino.dart';

class result_ListView extends StatelessWidget {
  const result_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     // shrinkWrap: true,
      //physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card_of_List();
      },
    );
  }
}
