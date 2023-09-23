import 'package:controle_prazo/app/pages/tab_pages/deadline_to_receive.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final int initial;
  final List<String> labelTab;
  final int length;

  const HomePage(
      {super.key,
      required this.length,
      required this.initial,
      required this.labelTab});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Widget> getTabBarLabels(List list) {
  return list.map((label) {
    return Tab(
      child: Text(label),
    );
  }).toList();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: widget.labelTab.length,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.indigoAccent,
            bottom: TabBar(
              tabs: getTabBarLabels(widget.labelTab),
            ),
          ),
          body: TabBarView(
            children: widget.labelTab.map((String label) {
              switch (label) {
                case "Futuros":
                  return const DeadlineToReceived();
                case "Recentes":
                  return Container(color: const Color.fromARGB(255, 0, 212, 11));
                  default: return Container(color: Colors.red);
              }
            }).toList(),
          ),
        ),
      ),
    );
  }
}
