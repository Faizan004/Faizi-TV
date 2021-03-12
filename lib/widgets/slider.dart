import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';



class CarouselSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: Colors.black,
        height: 200.0,
        width: double.infinity,
        child: Carousel(
          dotColor: Colors.lightGreenAccent,
          dotPosition: DotPosition.bottomRight,
          borderRadius: true,
          indicatorBgPadding: 0.0,
          boxFit: BoxFit.cover,
          onImageTap: (index) {
            print(index.toInt());
          },
          showIndicator: true,
          dotSize: 10,
          dotBgColor: Colors.transparent,
          images: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/psl');
              },
              child: Image.asset(
                  'assets/slider1.jpg',fit: BoxFit.cover,),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/tensports');
              },
              child: Image.asset(
                'assets/slider2.jpg',fit: BoxFit.cover,),
            ),
          ],
        ),
      ),
    );
  }
}
