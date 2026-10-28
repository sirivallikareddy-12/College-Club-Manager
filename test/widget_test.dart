import 'package:flutter_test/flutter_test.dart';
import 'package:college_club_manager/main.dart';

void main() {
  testWidgets('Login screen displays correctly', (WidgetTester tester) async {
    // Experiment 10: Test the College Club Manager login screen.
    // Build the app without running the Firebase-dependent main() function.
    await tester.pumpWidget(const CollegeClubManager());

    // Verify the visible login screen elements.
    expect(find.text('College Club Manager'), findsOneWidget);
    expect(find.text('Welcome!'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
  });
}
