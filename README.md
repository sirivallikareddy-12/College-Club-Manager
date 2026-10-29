# College Club Manager

A Flutter application for browsing college clubs and events, viewing details,
managing club participation, and navigating between the application's main
sections.

## CS506PC Flutter Lab Experiments

### Experiment 1: Flutter/Dart SDK and Dart Basics

**Objective:** Install and verify the Flutter and Dart SDKs, then write a
standalone Dart program to understand fundamental language concepts.

**Implementation:** The local Flutter SDK metadata reports Flutter `3.29.2`.
The installed Dart executable reports Dart `3.7.2`, which matches the
`^3.7.2` SDK constraint in `pubspec.yaml`.

The example in `lib/dart_basics.dart` is a standalone console program. It is
separate from the College Club Manager Flutter application and is not part of
the application's widget tree. It demonstrates variables, data types,
operators, conditional statements, collections, loops, functions, string
interpolation, and arrow-function syntax.

At the time of documentation, `lib/dart_basics.dart` exists locally but is
untracked by Git. It is therefore used only as locally verified evidence and
is not included in this README-only documentation commit.

**Relevant source paths:**

- `pubspec.yaml` — declares the Dart SDK constraint.
- `lib/dart_basics.dart` — standalone Dart example; currently untracked.
- `lib/main.dart` — Flutter application entry point; separate from the example.

**Code excerpt from the standalone Dart example:**

```dart
String clubName = 'Coding Club';
int memberCount = 28;
const int maximumMembers = 30;

int availableSeats = maximumMembers - memberCount;
bool canAcceptMembers = memberCount < maximumMembers;

if (canAcceptMembers) {
  print('$availableSeats seat(s) are available for new members.');
}

double calculateFee(double monthlyFee, int numberOfMonths) =>
    monthlyFee * numberOfMonths;
```

**Verified SDK output:**

```text
Dart SDK version: 3.7.2 (stable) on "windows_x64"
```

**Verified program output:**

```text
=== College Club Manager: Dart Basics ===

1. Variables and data types
Club: Coding Club
Members: 28/30
Membership fee: Rs. 150.50
Registration open: true

2. Operators
Available seats: 2
Total fees collected: Rs. 4214.00
Can accept new members: true

3. Conditions
2 seat(s) are available for new members.

4. Collections
Members: Aarav, Diya, Kabir, Meera
Club categories: Technical, Cultural, Sports
Coding Club coordinator: Dr. Sharma

5. Loops
Member 1: Aarav
Member 2: Diya
Member 3: Kabir
Member 4: Meera
Scheduled weekly meeting: 1
Scheduled weekly meeting: 2
Scheduled weekly meeting: 3

6. Functions
Welcome Aarav to the Coding Club!
Fee for 3 months: Rs. 451.50

=== Experiment completed successfully ===
```

**Output evidence:** The transcript above was obtained by executing the
standalone program locally. No terminal screenshot is currently available.

**Status:** Partially demonstrated — Dart SDK verification and program
execution were successful, but the standalone source file is currently
untracked and no terminal screenshot has been added.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
