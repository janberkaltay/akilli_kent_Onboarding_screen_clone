import 'package:flutter/material.dart';

class IntroPage5 extends StatelessWidget {
  const IntroPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.lightBlue, BlendMode.colorBurn),
            image: AssetImage(
                'assets/yelken.jpg'
            ),
            fit: BoxFit.cover,
            opacity: 230,
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text('İnteraktif',style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600)),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 7.5),
            child: Image(image: AssetImage('assets/agendaWithPhone.png'),
              width: 110,
              height: 110,),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical:70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Sağlık, Nöbetçi Eczane, Alo 153',style: TextStyle(fontSize: 16, color: Colors.white70)),
                Text('Facebook, Twitter',style: TextStyle(fontSize: 16, color: Colors.white70)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
