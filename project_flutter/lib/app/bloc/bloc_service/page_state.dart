part of 'page_bloc.dart';

@immutable
abstract class PageState extends Equatable{
  final List? state;
  const PageState([this.state]);
  @override
  List<Object?> get props =>   (state ?? []);
}

class PageInitial extends PageState {}

class PageLoading extends PageState {}

class PageError extends PageState {}

class PageSucceeded extends PageState {
  final String? data;
  const PageSucceeded({this.data});
}
