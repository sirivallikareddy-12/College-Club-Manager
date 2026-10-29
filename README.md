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

_The Dart program declares two integer variables, adds them, and prints the
verified result `Sum = 30` in the terminal._

![Experiment 1 Flutter and Dart SDK verification](screenshots/experiments/experiment-01-flutter-dart-sdk.png)

_The terminal verifies Flutter `3.29.2` and Dart `3.7.2` using
`flutter --version` and `dart --version`._

### Result

The basic Dart program demonstrates variable declaration and output generation. Flutter and Dart SDK installation can be verified using the above commands.

## Experiment 2: Exploring Flutter Widgets and Layout Structures

### Aim

To explore basic Flutter widgets and implement layouts using `Row`, `Column`, and `Stack`.

### Code Glimpse

```dart
Column(
  children: [
    Text('College Club Manager'),
    Row(
      children: [
        Icon(Icons.groups),
        Text('Coding Club'),
      ],
    ),
  ],
)
```

### Output

A layout displaying the application title and a row containing a club icon and its name.

### Screenshot

The Clubs screen demonstrates a scrollable `ListView` layout composed of
`Card`, `ListTile`, `CircleAvatar`, `Icon`, and `Text` widgets. The bottom
`NavigationBar` provides access to the application's main sections.

![Experiment 2 Output](screenshots/experiments/experiment-02-widgets-layouts.png)

_The College Clubs screen displays club names, categories, member counts,
icons, cards, and bottom navigation using widgets implemented in
`lib/screens/clubs_screen.dart` and `lib/screens/main_screen.dart`._

### Result

Basic Flutter widgets and layout structures were explored.

## Experiment 3: Responsive UI Using MediaQuery and LayoutBuilder

### Aim

To design a responsive user interface that adapts to different screen sizes using `MediaQuery` and `LayoutBuilder`.

### Implementation Evidence

The current Home screen uses `SingleChildScrollView` to allow vertical
scrolling and `Expanded` widgets to share the available width between its
summary cards. Repository inspection found no `MediaQuery`, `LayoutBuilder`,
or explicit responsive breakpoints, so adaptation across different screen
sizes is not yet verified.

### Code Glimpse from `lib/screens/home_screen.dart`

```dart
SingleChildScrollView(
  padding: const EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Expanded(child: Card(/* Available Clubs */)),
          Expanded(child: Card(/* My Clubs */)),
        ],
      ),
    ],
  ),
)
```

### Output

The screenshot records the Home screen on one mobile-sized viewport. It shows
the two summary cards sharing the available row width and the remaining
content arranged in a vertically scrollable layout.

### Screenshot

![Experiment 3 mobile layout](screenshots/experiments/experiment-03-mobile-layout.png)

_The College Club Manager Home screen displayed on a mobile-sized viewport.
This image verifies the current mobile layout only; it does not prove
breakpoint-based responsive behavior._

### Result

**Status: Partially demonstrated.** Flexible width sharing and vertical
scrolling are present, but `MediaQuery`, `LayoutBuilder`, and responsive
breakpoints are not implemented or verified in the current source.
