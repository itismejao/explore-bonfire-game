import 'package:bonfire/bonfire.dart';

class KnightSprite{

static Future<SpriteAnimation> _sequenceImage(String filename,) {
  return SpriteAnimation.load(
    'player/$filename', 
    SpriteAnimationData.sequenced(
      amount: 6, 
      stepTime: 0.15, 
      textureSize: Vector2(64,64),
      texturePosition: Vector2(0,0)
    ),
  );
}

static List<String> hobbitRunImages = ['hobbit-run1.png','hobbit-run2.png','hobbit-run3.png','hobbit-run4.png','hobbit-run5.png','hobbit-run6.png','hobbit-run7.png','hobbit-run8.png','hobbit-run9.png','hobbit-run10.png'];
static List<String> hobbitIdleImages = ['hobbit-idle1.png','hobbit-idle2.png','hobbit-idle3.png','hobbit-idle4.png'];
static List<String> hobbitIdleLeftImages = ['hobbit-idle1-left.png','hobbit-idle2-left.png','hobbit-idle3-left.png','hobbit-idle4-left.png'];
static List<String> hobbitRunLeftImages = ['hobbit-run1-left.png','hobbit-run2-left.png','hobbit-run3-left.png','hobbit-run4-left.png','hobbit-run5-left.png','hobbit-run6-left.png','hobbit-run7-left.png','hobbit-run8-left.png','hobbit-run9-left.png','hobbit-run10-left.png'];

static Future<SpriteAnimation> get idleLeft => _sequenceImageList(hobbitIdleLeftImages, 0.2);
static Future<SpriteAnimation> get idleRight => _sequenceImageList(hobbitIdleImages, 0.2);
static Future<SpriteAnimation> get runLeft => _sequenceImageList(hobbitRunLeftImages, 0.05);
static Future<SpriteAnimation> get runRight => _sequenceImageList(hobbitRunImages, 0.05);



static Future<SpriteAnimation> _sequenceImageList(List<String> filenames, double stepTime) async {
  List<Sprite> sprites = []; 
  for(String filename in filenames){
    sprites.add(await Sprite.load('player/$filename', srcPosition: Vector2(20, 20), srcSize: Vector2(20, 20)));
  }
  return SpriteAnimation.spriteList(
    sprites,
    stepTime: stepTime,
    loop: true
  );

 
}


}