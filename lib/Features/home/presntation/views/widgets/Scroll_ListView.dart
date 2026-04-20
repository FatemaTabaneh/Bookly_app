import 'package:bookly_app/Features/home/presntation/manger/bestSellerBooks/featured_best_seller_cubit.dart';
import 'package:bookly_app/Features/home/presntation/views/widgets/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Buttom_ListView extends StatelessWidget {
   Buttom_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBestSellerCubit,FeaturedBestSellerState>(
      builder: (context,state){
        if(state is FeaturedBestSellerFailure){
          print(state.errMess);
          return Text('something is wrong');
        }
        else if(state is FeaturedBestSellerSuccess){
          return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context,index){
                return Card_of_List(bookModel: state.books[index],);
              });
        }
        else{
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
