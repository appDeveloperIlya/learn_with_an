import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        leadingWidth: 45,
        toolbarHeight: 52,
      ),
      body: Column(children: [CategoryEvents2()]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CategoryEvents2 extends StatefulWidget {
  const CategoryEvents2({super.key});

  @override
  State<CategoryEvents2> createState() => _CategoryEventsState2();
}

class _CategoryEventsState2 extends State<CategoryEvents2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: widgetValues.length,
        itemBuilder: (_, i) => CategoryItem(value: widgetValues[i]),
      ),
    );
  }
}

class CategoryEvents extends StatefulWidget {
  const CategoryEvents({super.key});

  @override
  State<CategoryEvents> createState() => _CategoryEventsState();
}

class _CategoryEventsState extends State<CategoryEvents> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: widgetValues.map((i) => CategoryItem(value: i)).toList(),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String value;

  const CategoryItem({required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
      child: Text(value, style: TextStyle(color: Colors.black, fontSize: 10)),
    );
  }
}

const widgetValues = [
  'All events',
  'Concerts',
  'Technology',
  'Sports',
  'hello',
  'world',
  'world',
  'world',
  'Technology',
  'Technology',
  'Technology',
];
