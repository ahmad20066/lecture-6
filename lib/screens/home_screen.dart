// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lecture6/screens/form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Theme"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "HeadLine 1",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "HeadLine 2",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "HeadLine 3",
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Headline 4",
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "bodyText 1",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "subtitle",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FormScreen()));
                },
                child: Text("sss")),
            Container(
              child: Text(
                "Hello",
                style: TextStyle(color: Theme.of(context).accentColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
