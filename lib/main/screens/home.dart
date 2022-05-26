import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notes_rounded),
              ),
              CircleAvatar(
                child: Image.asset("assets/user_1.jpg"),
              )
            ],
          )
        ],
      ),
    );
  }
}
