import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: 'search',
            suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ),
      ),
    );
  }
}