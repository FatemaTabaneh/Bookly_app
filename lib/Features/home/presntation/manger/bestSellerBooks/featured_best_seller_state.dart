part of 'featured_best_seller_cubit.dart';

@immutable
sealed class FeaturedBestSellerState {}

final class FeaturedBestSellerInitial extends FeaturedBestSellerState {}
final class FeaturedBestSellerLoading extends FeaturedBestSellerState {}
final class FeaturedBestSellerSuccess extends FeaturedBestSellerState {
  final List<BookModel> books;

  FeaturedBestSellerSuccess(this.books);
}
final class FeaturedBestSellerFailure extends FeaturedBestSellerState {
  final String errMess;
  FeaturedBestSellerFailure(this.errMess);
}
