import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab Bar Page"),
          ),
          body: Column(
            children: [
              const TabBar(
                tabs: [
                  Text("Page 1"),
                  Text("Page 2"),
                  Text("Page 3"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.blue,
                      child: const Center(
                        child: Text("Page 1"),
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      child: const Center(
                        child: Text("Page 2"),
                      ),
                    ),
                    Container(
                      color: Colors.amber,
                      child: const Center(
                        child: Text("Page 3"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
