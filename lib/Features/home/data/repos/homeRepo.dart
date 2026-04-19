import 'package:bookly_app/Features/home/data/models/bookModel.dart';

abstract class HomeRepo
{
  Future<List<BookModel>> fetchBestSellerBooks();
  Future<List<BookModel>> fetchFeaturedBooks();
}