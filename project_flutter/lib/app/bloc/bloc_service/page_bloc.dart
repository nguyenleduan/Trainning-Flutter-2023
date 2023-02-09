import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project_flutter/config/url_api.dart';
import 'package:project_flutter/services/rest_api/api.dart';

import '../../../base/models/response_model.dart';

part 'page_event.dart';

part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(PageLoading()) {
    on<CallApi>(_callApi);
  }

  void _callApi(CallApi even, Emitter<PageState> emit) async {
    try {
      emit(PageLoading());
      final response = await Api.instance.post(
          UrlApi.instance.urlCheckPhoneActive,
          query: {"phoneNumber": "0966441600"});
      if (response.succeeded!) {
        emit(PageSucceeded(data: '$response'));
      } else {
        emit(PageError());
      }
    } catch (e) {
      emit(PageError());
    }
  }
}
