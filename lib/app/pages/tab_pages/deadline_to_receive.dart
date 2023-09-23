import 'package:flutter/material.dart';

import '../account_details_chat_page.dart';
import '../model/item.dart';
import '../widgets/text_label.dart';

class DeadlineToReceived extends StatefulWidget {
  const DeadlineToReceived({super.key});

  @override
  State<DeadlineToReceived> createState() => _DeadlineToReceivedState();
}

class _DeadlineToReceivedState extends State<DeadlineToReceived> {
  final List<Item> selectedList = [
    Item("Julia", "01/09/2023", "R\$ 100,00"),
    Item("Janet", "02/09/2023", "R\$ 75,50"),
    Item("Juana", "03/09/2023", "R\$ 1,75"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: ListView.builder(
        itemCount: selectedList.length,
        itemBuilder: (context, index) {
          return Center(
            child: Card(
              margin: const EdgeInsets.all(10),
              elevation: 16,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(width: 1, color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ListTile(
                  hoverColor: Colors.indigo[50],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountDetailChatPagState(nameClient: selectedList[index].nome)));
                    });
                  },
                  title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Nome: ${selectedList[index].nome}'),
                        TextLabel(texto: selectedList[index].data),
                      ]),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextLabel(
                                      texto:
                                          'Total: ${selectedList[index].total}'),
                                ),
                              ])),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
