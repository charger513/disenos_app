import 'package:disenos_app/src/widgets/slideshow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlideshowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Slideshow(
        puntosArriba: true,
        bulletPrimario: 5,
        bulletSecundario: 12,
        colorPrimario: Colors.red,
        colorSecundario: Colors.grey,
        slides: <Widget>[
          SvgPicture.asset('assets/svgs/slide-1.svg'),
          SvgPicture.asset('assets/svgs/slide-2.svg'),
          SvgPicture.asset('assets/svgs/slide-3.svg'),
        ],
      ),
    );
  }
}