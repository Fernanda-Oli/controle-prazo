import 'package:flutter/material.dart';

class AccountDetailChatPagState extends StatefulWidget {
  final String? nameClient;
  const AccountDetailChatPagState({super.key, required this.nameClient});

  @override
  State<AccountDetailChatPagState> createState() =>
      _AccountDetailChatPagStateState();
}

class _AccountDetailChatPagStateState extends State<AccountDetailChatPagState> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(widget.nameClient.toString()),
          backgroundColor: Colors.indigoAccent,
          actionsIconTheme: const IconThemeData.fallback()),
      body: Container(
        color: Colors.indigo[100],
      ),
    ));
  }
}
