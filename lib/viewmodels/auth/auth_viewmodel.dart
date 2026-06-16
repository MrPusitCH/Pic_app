import 'package:flutter/material.dart';
import '../../repository/auth_repository.dart';

class AuthViewModel extends ChangeNotifier {

  final AuthRepository repository;

  AuthViewModel(this.repository);

  bool isLoading = false;

  Future<bool> login(
    String email,
    String password,
  ) async {

    isLoading = true;
    notifyListeners();

    final result =
        await repository.login(
          email,
          password,
        );

    isLoading = false;
    notifyListeners();

    return result;
  }

  Future<bool> signup(
    String email,
    String password,
  ) async {

    isLoading = true;
    notifyListeners();

    final result =
        await repository.signup(
          email,
          password,
        );

    isLoading = false;
    notifyListeners();

    return result;
  }
}