import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final int statusCode;
  final String statusMessage;
  bool isSuccess;

  ErrorMessageModel({
    required this.statusCode,
    required this.statusMessage,
    this.isSuccess = false,
  });
  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) =>
      ErrorMessageModel(
        statusCode: json['status_code'],
        statusMessage: json['status_message'],
        isSuccess: json['success'],
      );

  @override
  List<Object?> get props => [statusCode, statusMessage, isSuccess];
}
