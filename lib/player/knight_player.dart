import 'package:bonfire/bonfire.dart';
import 'package:game/player/knight_sprite.dart';

class KnightPlayer extends SimplePlayer with ObjectCollision{
  KnightPlayer() : super(
    position: Vector2(64, 64),
    size: Vector2(40, 40),
    animation: SimpleDirectionAnimation(
      idleRight: KnightSprite.idleRight,
      idleLeft: KnightSprite.idleLeft, 
      runRight: KnightSprite.runRight,
      runLeft: KnightSprite.runLeft
      )
  )
     {
      setupCollision(
        CollisionConfig(
          collisions: [
            CollisionArea.rectangle(
              size: Vector2(25,25),
              align: Vector2(10,15)
            )
          ]
        ),
       );
    }

}