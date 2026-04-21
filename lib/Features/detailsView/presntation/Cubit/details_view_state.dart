part of 'details_view_cubit.dart';

@immutable
sealed class DetailsViewState {}

final class DetailsViewInitial extends DetailsViewState {}
final class DetailsViewLoading extends DetailsViewState {}
final class DetailsViewFailure extends DetailsViewState {
  final String errMess;

  DetailsViewFailure(this.errMess);
}
final class DetailsViewSuccess extends DetailsViewState {
  final List<BookModel> books;

  DetailsViewSuccess(this.books);
}

