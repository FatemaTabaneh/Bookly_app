import 'package:flutter/cupertino.dart';

class basic_ImageWidget extends StatelessWidget {
  const basic_ImageWidget({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 210,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:NetworkImage(imageUrl), //AssetImage('assets/images/test_image.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
