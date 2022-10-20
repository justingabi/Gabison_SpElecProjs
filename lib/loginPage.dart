// ignore_for_file: prefer_const_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 27, 27),
        body: SafeArea(
            child: Center(
                child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.rocket,
                color: Colors.deepPurple,
                size: 250,
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                'TO THE MOON',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36),
              ),
              SizedBox(height: 50),
              Text(
                'Welcome User!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 15),

              // textfields: Email and Pass
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border:
                          Border.all(color: Color.fromARGB(255, 212, 203, 203)),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border:
                          Border.all(color: Color.fromARGB(255, 212, 203, 203)),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // sign in
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 25.0)),
                // ignore: sort_child_properties_last
                child: const Text('Sign In'),
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LayoutWidget1()),
                  );
                }),
              ),

              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a passenger?',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text('Register now?',
                      style: TextStyle(
                          color: Colors.amberAccent,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ))));
  }
}

class LayoutWidget1 extends StatefulWidget {
  const LayoutWidget1({Key? key}) : super(key: key);

  @override
  State<LayoutWidget1> createState() => _LayoutWidgetState1();
}

class _LayoutWidgetState1 extends State<LayoutWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Center(
          child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 70, 20, 8),
            child: Container(
              height: 150,
              width: 500,
              color: Colors.grey[350],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
            child: Container(
              height: 150,
              width: 500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
            child: Container(
              height: 150,
              width: 500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Container(
              height: 150,
              width: 500,
              color: Colors.grey[350],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 25.0)),
              // ignore: sort_child_properties_last
              child: const Text('Back'),
              onPressed: (() {
                Navigator.pop(context);
              }),
            ),
            SizedBox(width: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 25.0)),
              // ignore: sort_child_properties_last
              child: const Text('Next'),
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LayoutWidget2()),
                );
              }),
            ),
          ]),
        ]),
      )),
    );
  }
}

class LayoutWidget2 extends StatefulWidget {
  const LayoutWidget2({Key? key}) : super(key: key);

  @override
  State<LayoutWidget2> createState() => _LayoutWidgetState2();
}

class _LayoutWidgetState2 extends State<LayoutWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey[350],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey[350],
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 25.0)),
                  // ignore: sort_child_properties_last
                  child: const Text('Back'),
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 25.0)),
                  // ignore: sort_child_properties_last
                  child: const Text('Next'),
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LayoutWidget3()),
                    );
                  }),
                ),
              ],
            ),
          ]),
        ));
  }
}

class LayoutWidget3 extends StatefulWidget {
  const LayoutWidget3({Key? key}) : super(key: key);

  @override
  State<LayoutWidget3> createState() => _LayoutWidgetState3();
}

class _LayoutWidgetState3 extends State<LayoutWidget3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(1, 70, 15, 0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey[350],
                ),
              ),
              // const SizedBox(
              //   width: 10,
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 70, 15, 0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey,
                ),
              ),
              // const SizedBox(
              //   width: 10,
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 70, 1, 0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey[350],
                ),
              ),
            ]),

            // containers

            const SizedBox(height: 20),
            Column(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(38, 0, 38, 6),
                child: Container(
                  height: 150,
                  width: 500,
                  color: Colors.grey[350],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(38, 0, 38, 0),
                child: Container(
                  height: 150,
                  width: 500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 25.0)),
                // ignore: sort_child_properties_last
                child: const Text('Back'),
                onPressed: (() {
                  Navigator.pop(context);
                }),
              ),
            ])
          ]),
        ));
  }
}
