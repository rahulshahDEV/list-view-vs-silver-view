import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // forceMaterialTransparency: true,
        // scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomScrollView(
          // scrollDirection: Axis.horizontal,
          physics: const ClampingScrollPhysics(),
          slivers: List.generate(
            2,
            (index) => SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                          color: Colors.deepPurple,
                          height: 20 + index.toDouble(),
                          margin: const EdgeInsets.all(10),
                          child: Center(child: Text('widget $index')),
                        ),
                    childCount: 20)),
          ),
        ),
      ),
    );
  }
}
