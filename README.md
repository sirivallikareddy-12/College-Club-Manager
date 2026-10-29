## Experiment 1: Installation of Flutter & Dart SDK and Introduction to Dart Programming

### Aim

To install and verify the Flutter and Dart SDKs and understand the basics of Dart programming.

### Description

Flutter is a framework used to develop cross-platform applications, while Dart is the programming language used by Flutter. This experiment introduces basic Dart variables, data types, and output statements.

### Code Glimpse

```dart
void main() {
  String club = 'Coding Club';
  int members = 50;

  print('$club has $members members');
}
```

### Output

```text
Coding Club has 50 members
```

### SDK Verification

Run the following commands in the terminal to check the installed versions:

```bash
flutter --version
dart --version
```

### Output Screenshots

![Experiment 1 Dart program output](screenshots/experiments/experiment-01-dart-program-output.png)

*The Dart program declares two integer variables, adds them, and prints the
verified result `Sum = 30` in the terminal.*

![Experiment 1 Flutter and Dart SDK verification](screenshots/experiments/experiment-01-flutter-dart-sdk.png)

*The terminal verifies Flutter `3.29.2` and Dart `3.7.2` using
`flutter --version` and `dart --version`.*

### Result

The basic Dart program demonstrates variable declaration and output generation. Flutter and Dart SDK installation can be verified using the above commands.
