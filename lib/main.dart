import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(AnimationMain());
}

class AnimationMain extends StatefulWidget {
  @override
  State<AnimationMain> createState() => _AnimationMainState();
}

class _AnimationMainState extends State<AnimationMain> {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonsection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.ads_click, 'Lottie 2'),
          _buildButtonColumn(color, Icons.airplay, 'Lottie 3'),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lottie Animation',
      home: Scaffold(
        body: ListView(
          children: [
            Lottie.network(
                'https://assets10.lottiefiles.com/packages/lf20_0yfsb3a1.json',
                width: 600,
                fit: BoxFit.cover,
                animate: true
                //si dejamos en false, no tendra animacion
                ),
            buttonsection
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
