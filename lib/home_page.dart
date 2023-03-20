import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        title: const Text('Janberk ALTAY'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Sosyal Medya Hesaplarım', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            const CircleAvatar(
              radius: 235,
              child: CircleAvatar(
                radius: 200,
                backgroundImage: AssetImage('assets/JanberkAltay.jpeg'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(FontAwesomeIcons.github, size: 24, color: Colors.black),
                Text(':  github.com/janberkaltay', style: TextStyle(fontSize: 24),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(FontAwesomeIcons.linkedin, size: 24, color: Colors.blue,),
                Text(':  linkedin.com/in/janberkaltay/', style: TextStyle(fontSize: 24),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(FontAwesomeIcons.instagram, size: 24,color: Colors.pink),
                Text(':  janberkaltay', style: TextStyle(fontSize: 24),),
              ],
            ),
            Row(
              children: const [
                Icon(FontAwesomeIcons.twitter, size: 24, color: Colors.blue,),
                Text(':  twitter.com/janberkaltay', style: TextStyle(fontSize: 24),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
