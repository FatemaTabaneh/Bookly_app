import 'package:bookly_app/Api/apiServic.dart';
import 'package:bookly_app/Features/detailsView/data/repos/detailsViewRepo.dart';
import 'package:bookly_app/Features/home/data/models/bookModel.dart';

class DetailsViewRepoImp extends DetailsViewRepo {
  final ApiService apiService;

  DetailsViewRepoImp(this.apiService);

  @override
  Future<List<BookModel>> fetchSimilarBooks({required String category}) async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?filter=free-ebooks&q=$category&sorting=relevance',
      );

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return books;
    } on Exception catch (e) {
      throw Exception('Failed to fetch similar books: $e');
    }
  }
}