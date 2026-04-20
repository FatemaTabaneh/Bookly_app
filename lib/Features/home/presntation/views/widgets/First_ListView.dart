import 'package:bookly_app/Features/home/presntation/manger/featuredBooks/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presntation/views/widgets/Custom_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class first_listView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(
      builder:(context,state) {
        if(state is FeaturedBooksFailure){
          print(state.errMes);
          return Text('something is wrong');
        }
        else if(state is FeaturedBooksSuccess){
          return SizedBox(
            height:MediaQuery.of(context).size.height*.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: custom_item(ImageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,),
                );
              },
            ),
          );
        }
        else{
          return Center(child: CircularProgressIndicator());
        }


      }
    );
  }
}
