import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/bookModel.dart';
import 'package:bookly_app/Features/home/data/repos/homeRepo.dart';
import 'package:meta/meta.dart';

part 'featured_best_seller_state.dart';

class FeaturedBestSellerCubit extends Cubit<FeaturedBestSellerState> {
  FeaturedBestSellerCubit({required this.homeRepo}) : super(FeaturedBestSellerInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBestSellerBooks()async{
    emit(FeaturedBestSellerLoading());
    try {
      var data=await homeRepo.fetchBestSellerBooks();
      emit(FeaturedBestSellerSuccess(data));
    } on Exception catch (e) {
      emit(FeaturedBestSellerFailure(e.toString()));
    }

  }
}
