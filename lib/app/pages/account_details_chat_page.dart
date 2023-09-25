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
        actionsIconTheme: const IconThemeData.fallback(),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String choice) {
              if (choice == 'Item 1') {
                // Lidar com a seleção do Item 1
              } else if (choice == 'Item 2') {
                // Lidar com a seleção do Item 2
              }
              // Adicione mais opções, se necessário
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'Item 2',
                  child: Text('Item 2'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.indigo[100],
      ),
    ));
  }
}

  List<Widget> windowMenuItem(List itens) {
    return itens.map((item) {
      return PopupMenuItem<String>(
      value: item,
      child: Text(item),
    );
    }).toList();
  
  }

