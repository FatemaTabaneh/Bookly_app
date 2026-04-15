import 'package:bookly_app/Features/home/presntation/views/widgets/card.dart';
import 'package:flutter/cupertino.dart';

class Buttom_ListView extends StatelessWidget {
  const Buttom_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
        itemBuilder: (context,index){
      return Card_of_List();
    });
  }
}
