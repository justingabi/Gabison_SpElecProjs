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
                    MaterialPageRoute(builder: (context) => const HomePage()),
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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 27, 27),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Justin Gwapo',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  // profile picture
                  Container(
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            //cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 65, 221, 117),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(children: [
                  //
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 100,
                    width: 100,
                    child: Icon(
                      Icons.rocket_launch,
                      color: Colors.red,
                      size: 100,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'To the Moon?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Fill out your ticket now!',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            'Get Started',
                            style: TextStyle(color: Colors.black),
                          )),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(height: 25),
            // search
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 221, 221),
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you?',
                  ),
                ),
              ),
            ),
            SizedBox(height: 300),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 25.0)),
              // ignore: sort_child_properties_last
              child: const Text('Logout'),
              onPressed: (() {
                Navigator.pop(context);
              }),
            ),
          ]),
        ),
      ),
    );
  }
}
