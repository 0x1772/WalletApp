import 'dart:ffi';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/ui/screen/sign_in.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WalletApp());
}

ThemeManager _themeManager = _themeManager();

class WalletApp extends StatefulWidget {
  const WalletApp({key? key}) : super(key: key);

  @override
  State<WalletApp> createState() => _WalletAppState();
}

class _WalletAppState extends State<WalletApp> {
  @override
  Void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }
}

  @override
void dispose() {
  _themeManager.removeListener(themeListeer);
  super.dispose();
}

themeListener() {
  if (mounted) {
    setState(() {});
  }
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WalletApp',
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      lightTheme: ligtTheme,
      themeMode: ThemeMode.system
      home: const SignInPage(),
    );
  }