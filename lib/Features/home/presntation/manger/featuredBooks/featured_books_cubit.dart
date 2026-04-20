import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/bookModel.dart';
import 'package:bookly_app/Features/home/data/repos/homeRepo.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.homeRepo}) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
    try {
      final data =await homeRepo.fetchFeaturedBooks();
      emit(FeaturedBooksSuccess(data));
    } on Exception catch (e) {
      emit(FeaturedBooksFailure(e.toString()));
    }
    
  }

}
