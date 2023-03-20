import 'package:flutter/material.dart';

class IntroPage4 extends StatelessWidget {
  const IntroPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          image:  DecorationImage(
              colorFilter: ColorFilter.mode(Colors.deepOrange, BlendMode.dstATop),
              image: AssetImage('assets/taskopru.jpg'),fit: BoxFit.cover, opacity: 220
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text('Ulaşım',style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600)),
          const Padding(
            padding: EdgeInsets.only(top: 30,left: 20),
            child: Image(image: AssetImage('assets/agenda.png'),
              width: 110,
              height: 110,
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
              child: Column(
                children: const [
                  Text('Otobüsünüzün nerede olduğunu',style: TextStyle(fontSize: 16, color: Colors.white70)),
                  Text('görebilir, size en yakın otobüs',style: TextStyle(fontSize: 16, color: Colors.white70)),
                  Text('ureklarına, güzergalarına ve metro',style: TextStyle(fontSize: 16, color: Colors.white70)),
                  Text('saatlerine ulaşabilirsiniz.',style: TextStyle(fontSize: 16, color: Colors.white70)),

                ],
              ))
        ],
      ),
    );
  }
}
