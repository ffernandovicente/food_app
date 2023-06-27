import 'package:flutter_test/flutter_test.dart';
import 'package:food_app/counter/counter.dart';

import '../../helpers/helpers.dart';

void main() {
  group('CounterPage', () {
    testWidgets('renders CounterView', (tester) async {
      await tester.pumpApp(const CounterPage());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
