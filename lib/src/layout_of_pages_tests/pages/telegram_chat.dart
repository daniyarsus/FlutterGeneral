import 'package:flutter/material.dart';

void main() {
  runApp(const TelegramChatExample());
}

class TelegramChatExample extends StatelessWidget {
  const TelegramChatExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                            color: Colors.white
                        ),
                        child: const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              margin: const EdgeInsets.all(5.0),
                              padding: const EdgeInsets.all(5.0),
                              decoration: const BoxDecoration(
                                  color: Colors.white
                              ),
                              child: const Text(
                                "Professor",
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin: const EdgeInsets.all(5.0),
                              padding: const EdgeInsets.all(5.0),
                              decoration: const BoxDecoration(
                                  color: Colors.white
                              ),
                              child: const Text("last seen 20 minutes ago"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                            color: Colors.white
                        ),
                        child: const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.person,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal),
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightGreen),
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text("Hi! Professor!"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightGreen),
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text("Our projects are due today, right? 🤔"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightGreen),
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text("👍"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightGreen),
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text("Thanks, here's mine:"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightGreen),
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: IntrinsicWidth(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.all(2.0),
                                padding: const EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/0/0e/Felis_silvestris_silvestris.jpg",
                                  width: 100,
                                  height: 100
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 100.0,
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.all(5.0),
                                child: const Text("project.pdf"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightGreen),
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text("Good!"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightGreen),
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text("Well, thanks!"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.blueAccent
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.all(10.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Text("Message"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      height: 250.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        color: Colors.blueAccent,
                      ),
                      child: const Text("Here's keyboard."),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
