import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:power_progress/presentation/theme/pp_light_theme.dart';
import 'package:power_progress/presentation/widgets/centered_loading.dart';

class SplashScreen extends StatelessWidget {
  TextStyle _getTextStyle(BuildContext context) {
    return GoogleFonts.courgette(
      color: Colors.white,
      fontSize: 72,
      shadows: <Shadow>[
        Shadow(
          offset: const Offset(3.0, 3.0),
          blurRadius: 5.0,
          color: Colors.black.withAlpha(120),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            PPTheme.pink,
            PPTheme.yellow,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 30,
            top: 80,
            child: Text(
              'Power',
              style: _getTextStyle(context),
            ),
          ),
          Positioned(
            top: 160,
            right: 30,
            child: Text(
              'Progress',
              style: _getTextStyle(context),
            ),
          ),
          const CenteredLoading(
            backgroundColor: Colors.transparent,
            color: PPTheme.yellow,
          ),
        ],
      ),
    );
  }
}
