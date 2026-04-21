import 'package:bookly_app/Features/home/data/models/bookModel.dart';

abstract class DetailsViewRepo{
  Future<List<BookModel>> fetchSimilarBooks({required String category});

}