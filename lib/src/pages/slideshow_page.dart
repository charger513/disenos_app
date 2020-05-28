import 'package:disenos_app/src/theme/theme.dart';
import 'package:disenos_app/src/widgets/slideshow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SlideshowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLarge;
    if (MediaQuery.of(context).size.height > 500) {
      isLarge = true;
    } else {
      isLarge = false;
    }

    final children = [
      Expanded(child: MiSlideshow()),
      Expanded(child: MiSlideshow()),
    ];

    return Scaffold(
      body: isLarge ? Column(children: children) : Row(children: children),
    );
  }
}

class MiSlideshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
    final accentColor = appTheme.currentTheme.accentColor;

    return Slideshow(
      bulletPrimario: 20,
      bulletSecundario: 12,
      colorPrimario: appTheme.darkTheme ? accentColor : Colors.red,
      colorSecundario: Colors.grey,
      slides: <Widget>[
        SvgPicture.asset('assets/svgs/slide-1.svg'),
        SvgPicture.asset('assets/svgs/slide-2.svg'),
        SvgPicture.asset('assets/svgs/slide-3.svg'),
      ],
    );
  }
}
