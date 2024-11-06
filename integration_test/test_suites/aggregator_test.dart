import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'send_flow_test.dart' as send_flow_test;
import 'exchange_flow_test.dart' as exchange_flow_test;
import 'create_wallet_flow_test.dart' as create_wallet_flow_test;
import 'confirm_seeds_flow_test.dart' as confirm_seeds_flow_test;
import 'transaction_history_flow_test.dart' as transaction_history_flow_test;
import 'restore_wallet_through_seeds_flow_test.dart' as restore_wallet_through_seeds_flow_test;

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  send_flow_test.main();
  exchange_flow_test.main();
  restore_wallet_through_seeds_flow_test.main();
  create_wallet_flow_test.main();
  confirm_seeds_flow_test.main();
  transaction_history_flow_test.main();
}
