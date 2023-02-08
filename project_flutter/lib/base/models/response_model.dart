import 'dart:convert';
import 'package:equatable/equatable.dart';

class ResponseModel extends Equatable {
  final bool? succeeded;
  final String? error;
  final dynamic data;

  ResponseModel({this.succeeded, this.error, this.data});

  const ResponseModel._internal(this.succeeded, this.data, this.error);

  factory ResponseModel.fromMap(Map<String, dynamic> map) {
    return ResponseModel._internal(
      map['data'],
      map['succeeded'],
      map['error'],
    );
  }

  factory ResponseModel.fromJson(String source) {
    return ResponseModel.fromMap(json.decode(source));
  }

  @override
  List<Object?> get props => [succeeded, error, data];
}
