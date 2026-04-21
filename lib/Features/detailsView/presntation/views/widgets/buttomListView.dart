import 'package:bookly_app/Features/detailsView/presntation/Cubit/details_view_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class buttom_ListView extends StatelessWidget {
  const buttom_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsViewCubit, DetailsViewState>(
      builder: (context, state) {
        if (state is DetailsViewFailure) {
          return Text('someThing is wrong');
        } else if (state is DetailsViewSuccess) {
          return SizedBox(
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 20,
                  ),
                  child: Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          state.books[index].volumeInfo.imageLinks!.thumbnail,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
