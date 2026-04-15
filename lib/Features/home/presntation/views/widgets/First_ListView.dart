import 'package:bookly_app/Features/home/presntation/views/widgets/Custom_item.dart';
import 'package:flutter/cupertino.dart';

class first_listView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*.3,

      // height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return custom_item();
        },
      ),
    );
  }
}
