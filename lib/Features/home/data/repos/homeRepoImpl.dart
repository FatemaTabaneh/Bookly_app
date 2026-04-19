import 'package:bookly_app/Api/apiServic.dart';
import 'package:bookly_app/Features/home/data/models/bookModel.dart';
import 'package:bookly_app/Features/home/data/repos/homeRepo.dart';

class Homerepoimpl implements HomeRepo{
  ApiService apiService;
  Homerepoimpl(this.apiService);
  @override
  Future<List<BookModel>> fetchBestSellerBooks() async{
    try {
      var data=await apiService.get(
          endPoint: 'volumes?filter=free-ebooks&q=programming&orderBy=newest',);
      List<BookModel> books=[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return books;
    } on Exception catch (e) {
      throw Exception('Failed to fetch best seller books: $e');

    }

  }

  @override
  Future<List<BookModel>> fetchFeaturedBooks() async{
    try {
      var data=await apiService.get(
        endPoint: 'volumes?filter=free-ebooks&q=programming',);
      List<BookModel> books=[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return books;
    } on Exception catch (e) {
      throw Exception('Failed to fetch featured books: $e');
    }


  }

}