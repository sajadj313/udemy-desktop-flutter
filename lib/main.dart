import 'package:flutter/material.dart';
import 'package:udemy_desktop_flutter/classCard.dart';
import 'package:udemy_desktop_flutter/models/class.dart';
import 'package:udemy_desktop_flutter/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0XFF1c1d1f),
              height: 153,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 1200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'My Learning',
                        style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'Merriweather'),
                      ),
                      SizedBox(
                        width: 1200,
                        child: Row(
                          children: [
                            Expanded(
                              child: TabBar(
                                  isScrollable: true,
                                  padding: const EdgeInsets.only(right: 20),
                                  labelPadding: const EdgeInsets.only(right: 20),
                                  indicatorPadding: const EdgeInsets.only(right: 20),
                                  indicatorWeight: 5,
                                  indicatorColor: Colors.grey,
                                  controller: _tabController,
                                  labelStyle: const TextStyle(fontSize: 15),
                                  tabs: const [
                                    Tab(
                                      text: 'All courses',
                                    ),
                                    Tab(
                                      text: 'Lists',
                                    ),
                                    Tab(
                                      text: 'Wishlist',
                                    ),
                                    Tab(
                                      text: 'Archived',
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                childAspectRatio: 0.88,
                children: getClasses().map((cls) => ClassCard(cls)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
