import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.orangeAccent, BlendMode.colorBurn),
              image: AssetImage('assets/AdanaSabancıMerkezCamii-1024x707.jpg'),fit: BoxFit.cover, opacity: 230
          )
      ),
      padding: const EdgeInsets.all(12),
      //   color: Colors.deepPurple,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Image(image: AssetImage('assets/abb.png'),
                width: 130,
                height: 130,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text('Adana',style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600)),
              ),
              const Text('Büyükşehir Belediyesi',style: TextStyle(fontSize: 20, color: Colors.white)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 70),
                child: Column(
                  children: const [
                    Text('Adana Büyükşehir Belediyesi Akıllı Kent', style: TextStyle(fontSize: 16, color: Colors.white70)),
                    Text('Uygulamasına Hoşgeldiniz.', style: TextStyle(fontSize: 16, color: Colors.white70)),
                    Text('Bu uygulama güzel şehrimizi keşfetmeni', style: TextStyle(fontSize: 16, color: Colors.white70)),
                    Text('sağlar', style: TextStyle(fontSize: 16, color: Colors.white70)),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
