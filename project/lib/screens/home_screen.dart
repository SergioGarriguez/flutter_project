import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 58, 53, 45),
        child: Center(
          child: Column(
            children: [
              Spacer(flex: 10),
              FilledButton(
                onPressed: () => Navigator.of(context).pushNamed("/dog"),
                child: Text("See dogs"),
              ),
              //rng(),
              //Text("${Random().nextInt(10) } "),
              Spacer(flex: 90),
            ],
          ),
        ),
      ),
    );
  }
}
