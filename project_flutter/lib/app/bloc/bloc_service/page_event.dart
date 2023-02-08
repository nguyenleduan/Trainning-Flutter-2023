part of 'page_bloc.dart';

@immutable
abstract class PageEvent extends Equatable{
  final List? even;
  const PageEvent([this.even]);
  @override
  // TODO: implement props
  List<Object?> get props => (even ?? []);
}

class CallApi extends PageEvent {
    final String? data;
    const CallApi({this.data});
}