class AuthRepository {

  Future<bool> login(
    String email,
    String password,
  ) async {

    await Future.delayed(
      const Duration(seconds: 1),
    );

    return email == "test@test.com" &&
           password == "123456";
  }

  Future<bool> signup(
    String email,
    String password,
  ) async {

    await Future.delayed(
      const Duration(seconds: 1),
    );

    return true;
  }
}