import 'package:ecom_clean_arch/core/network/error_message_model.dart';

class ServerExeption implements Exception {
  final ErrorMessageModel errorMessageModel;

  ServerExeption({required this.errorMessageModel});
}

class LocalDatabaseExeption implements Exception {
  final ErrorMessageModel errorMessageModel;

  LocalDatabaseExeption({required this.errorMessageModel});
}
