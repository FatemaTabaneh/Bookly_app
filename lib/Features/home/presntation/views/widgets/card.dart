import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card_of_List extends StatelessWidget {
  const Card_of_List({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 160,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/test_image.png',
                width: 110,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Harry Potter and the Goblet of Fire',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  SizedBox(height: 4),

                  Text(
                    'J.K. Rowling',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '19.99 €',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      Spacer(flex: 1,),
                      Row(children: [

                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 4),

                        Text('4.8',style: TextStyle(fontSize: 20),),
                        SizedBox(width: 4),

                        Text('(2390)', style: TextStyle(color: Colors.grey)),
                      ],)

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
