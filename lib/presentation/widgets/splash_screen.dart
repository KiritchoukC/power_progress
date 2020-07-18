import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avatar_glow/avatar_glow.dart';

class SplashScreen extends StatelessWidget {
  TextStyle _getTextStyle(BuildContext context) {
    return GoogleFonts.doHyeon(
      color: Colors.black,
      fontSize: 84,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AvatarGlow(
        glowColor: Theme.of(context).primaryColor,
        endRadius: 120.0,
        repeatPauseDuration: const Duration(),
        child: Material(
          elevation: 8.0,
          shape: const CircleBorder(),
          child: CircleAvatar(
            backgroundColor: Colors.grey[100],
            radius: 80.0,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  top: 20,
                  left: 40,
                  child: Text(
                    'P',
                    style: _getTextStyle(context),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 80,
                  child: Text(
                    'p',
                    style: _getTextStyle(context),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
