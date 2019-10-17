import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.library_books),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        child: Center(
          child: Text(
            'Demo Placeholder',
            style: Theme.of(context).textTheme.body1.apply(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
