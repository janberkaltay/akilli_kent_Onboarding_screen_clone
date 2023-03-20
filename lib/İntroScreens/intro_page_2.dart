import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.purple, BlendMode.colorBurn),
            opacity: 230,
            image: AssetImage('assets/varda_köprüsü.jpg'),fit: BoxFit.cover,
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text("Belediye",style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600)),
          const Image(image: AssetImage('assets/output-onlinepngtools.png'),
            width: 130,
            height: 130,),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Başkan, Kurum, İhale İlanları,',style: TextStyle(fontSize: 16, color: Colors.white70)),
                  Text('Duyurular, Haberler,Hal Fiyatları.',style: TextStyle(fontSize: 16, color: Colors.white70)),
                  Text('hakkında birçok haber bu başlık.',style: TextStyle(fontSize: 16, color: Colors.white70)),
                  Text('altındadır.',style: TextStyle(fontSize: 16, color: Colors.white70)),
                ],
              )
          )
        ],
      ),
    );
  }
}
