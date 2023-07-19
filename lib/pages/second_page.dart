import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.counter});
  final int counter;

  void g() {
    (counter: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Counter result",
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: (10.0),
          ),
          Center(
            child: Container(
              width: 300.0,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 248, 239, 245),
              ),

              alignment: Alignment.center, // where to position the child
              child: Container(
                width: 300.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 236, 233, 240),
                ),
                child: Center(
                  child: Text(
                    "$counter",
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
