import 'package:flutter/material.dart';
import 'package:silver/homecreen2.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Color> myColours = [
    Colors.amber,
    Colors.black,
    Colors.orange,
    Colors.deepPurple,
    Colors.blue
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: myColours.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        index.toString(),
                        style: TextStyle(backgroundColor: myColours[index]),
                      ),
                      ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return TextButton(
                              child: const Text(
                                'go to silver',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const HomeScreen2(),
                                ));
                              },
                            );
                          }),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
