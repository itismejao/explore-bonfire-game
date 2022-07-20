import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:game/player/knight_player.dart';

class Starter extends StatefulWidget {
  const Starter({Key? key}) : super(key: key);

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    double widht = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BonfireTiledWidget(
      map: TiledWorldMap(
        'maps/mapa2.json',
        forceTileSize: Size(height/25, widht/10)
      ),
      player: KnightPlayer(),
      joystick: Joystick(
        directional: JoystickDirectional()       
      ),
      );
  }
}