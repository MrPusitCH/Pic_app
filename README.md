# Pic

A Flutter authentication starter project built with a clean, lightweight MVVM-style structure.

The project currently includes login and sign-up screens, an authentication view model, a repository layer, and a simple user model. It is designed as a small foundation that can grow into a real app without mixing UI, state, and data access in the same files.

## Highlights

- Flutter app using Material UI
- Auth screens for login and sign up
- MVVM-inspired folder structure
- Repository layer for authentication logic
- Barrel export for auth views
- Ready to extend with real API, Firebase, or local storage

## Project Structure

```text
lib/
  main.dart
  models/
    user_model.dart
  repository/
    auth_repository.dart
  viewmodels/
    auth/
      auth_viewmodel.dart
  views/
    auth/
      auth_view.dart
      page/
        login_view.dart
        signup_view.dart
      utils/
      widget/
```

## Auth View Export

Auth pages are grouped through:

```text
lib/views/auth/auth_view.dart
```

This keeps `main.dart` clean:

```dart
import 'views/auth/auth_view.dart';
```

## Getting Started

Install dependencies:

```bash
flutter pub get
```

Run the app:

```bash
flutter run
```

Run analysis:

```bash
flutter analyze
```

Run tests:

```bash
flutter test
```

## Demo Auth

The current login repository uses mock authentication:

```text
Email: test@test.com
Password: 123456
```

Sign up currently returns success after a short simulated delay.

## Roadmap

- Connect authentication to a real backend
- Add validation for login and sign-up forms
- Add loading and error states in the UI
- Add reusable auth widgets
- Add navigation after successful login
- Add unit tests for repository and view model logic

## Tech Stack

- Flutter
- Dart
- Material Design

## Status

This project is in early development and currently focuses on authentication structure and app organization.
