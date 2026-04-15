import 'package:flutter/cupertino.dart';

class custom_item extends StatelessWidget {
  const custom_item({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.8/4,
        child: Container(
          height:MediaQuery.of(context).size.height*.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage('assets/images/test_image.png'),
              fit: BoxFit.cover
            ),
          ),
        ),
      ),
    );
  }
}
