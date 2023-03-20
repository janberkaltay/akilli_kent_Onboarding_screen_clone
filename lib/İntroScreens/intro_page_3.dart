import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          image: DecorationImage(        colorFilter: ColorFilter.mode(Colors.green, BlendMode.colorBurn),fit: BoxFit.cover,
              opacity: 230,
              image: AssetImage('assets/tren_garı.jpg')
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Text('Şehir Rehberim',style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.w600)),
          ),
          const Image(image:AssetImage('assets/notebook.png'),
            width: 130,
            height: 130,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
              child: Column(
                children: const [
                  Text('Restoranlar, Konaklama, Sinemalar,',style: TextStyle(fontSize: 16, color: Colors.white70)),
                  Text('Tiyatro, Alışveriş, Spor, Kültür&Sanat',style: TextStyle(fontSize: 16, color: Colors.white70)),
                  Text('Devlet Daireleri, Üniversiteler ve',style: TextStyle(fontSize: 16, color: Colors.white70)),
                  Text('Bankalar hakkında birçok bilgi bu ',style: TextStyle(fontSize: 16, color: Colors.white70)),
                  Text('başlık altındadır.',style: TextStyle(fontSize: 16, color: Colors.white70)),
                ],
              ))
        ],
      ),
    );
  }
}
