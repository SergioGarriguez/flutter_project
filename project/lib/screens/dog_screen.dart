import 'package:flutter/material.dart';
import 'package:project/model/dog.dart';
import 'dart:math';

class DogScreen extends StatelessWidget {
  const DogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dogs"),
        ),
        body: Container(
          color: Color.fromARGB(255, 58, 53, 45),
          child: Center(
            child: DogPicture(),
          ),
        ));
  }
}

class DogPicture extends StatefulWidget {
  const DogPicture({
    super.key,
  });

  @override
  State<DogPicture> createState() => _DogPictureState();
}

class _DogPictureState extends State<DogPicture> {
  String currentDog =
      "https:\/\/images.dog.ceo\/breeds\/bulldog-french\/n02108915_3398.jpg";
  int randNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 20),
        Container(
          height: 300,
          width: 300,
          child: Image.network(
              "https:\/\/images.dog.ceo\/breeds\/bulldog-french\/n02108915_3398.jpg"),
        ),
        Spacer(flex: 10),
        ElevatedButton(
          onPressed: () {
            setState(() {
              randNum = Random().nextInt(400);
            });
          },
          child: Text("Random Dog"),
        ),
        Spacer(flex: 80),
      ],
    );
  }
}
