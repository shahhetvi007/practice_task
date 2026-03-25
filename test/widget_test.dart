import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practical_task/app/app_view.dart';

void main() {
  testWidgets('App initialization test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: AppView(),
      ),
    );

    // Basic check that it loads
    expect(find.byType(AppView), findsOneWidget);
  });
}
