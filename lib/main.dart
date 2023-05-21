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
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List contacts = [
    "Sayman Rifat",
    "Adam",
    "Alex",
    "Aaron",
    "Ben",
    "Carl",
    "Dan",
    "David",
    "Edward",
    "Fred",
    "Frank",
    "George",
    "Hal",
    "Hank",
    "Ike",
    "John",
    "Jack",
    "Joe",
    "Larry",
    "Monte",
    "Matthew",
    "Mark",
    "Nathan",
    "Otto",
    "Paul",
    "Peter",
    "Roger",
    "Roger",
    "Steve",
    "Thomas",
    "Tim",
    "Ty",
    "Victor",
    "Walter"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts '),
      ),
      body: SafeArea(
          child: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            contacts.add("Summy");
          });
        },
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                  child: Text(contacts[index].toString().characters.first)),
              title: Text(contacts[index]),
            );
          },
          itemCount: contacts.length,
        ),
      )),
    );
  }
}
