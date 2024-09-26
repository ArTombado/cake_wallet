import 'package:cw_core/wallet_credentials.dart';
import 'package:cw_core/wallet_info.dart';

class SolanaNewWalletCredentials extends WalletCredentials {
  SolanaNewWalletCredentials({
    required String name,
    WalletInfo? walletInfo,
    String? password,
    String? parentAddress,
    this.mnemonic,
  }) : super(
          name: name,
          walletInfo: walletInfo,
          password: password,
          parentAddress: parentAddress,
        );
  final String? mnemonic;
}

class SolanaRestoreWalletFromSeedCredentials extends WalletCredentials {
  SolanaRestoreWalletFromSeedCredentials(
      {required String name,
      required String password,
      required this.mnemonic,
      WalletInfo? walletInfo})
      : super(name: name, password: password, walletInfo: walletInfo);

  final String mnemonic;
}

class SolanaRestoreWalletFromPrivateKey extends WalletCredentials {
  SolanaRestoreWalletFromPrivateKey(
      {required String name,
      required String password,
      required this.privateKey,
      WalletInfo? walletInfo})
      : super(name: name, password: password, walletInfo: walletInfo);

  final String privateKey;
}
