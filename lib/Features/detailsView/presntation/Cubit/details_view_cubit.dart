import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/detailsView/data/repos/detailsViewRepo.dart';
import 'package:bookly_app/Features/home/data/models/bookModel.dart';
import 'package:meta/meta.dart';

part 'details_view_state.dart';

class DetailsViewCubit extends Cubit<DetailsViewState> {
  final DetailsViewRepo detailsViewRepo;

  DetailsViewCubit({required this.detailsViewRepo})
      : super(DetailsViewInitial());

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(DetailsViewLoading());
    try {
      var data = await detailsViewRepo.fetchSimilarBooks(category: category);
      emit(DetailsViewSuccess(data));
    } on Exception catch (e) {
      emit(DetailsViewFailure(e.toString()));
    }
  }
}
