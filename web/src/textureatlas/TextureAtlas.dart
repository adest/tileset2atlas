library textureatlas;

import 'dart:html';
import 'dart:json';

part 'TextureFrame.dart';
part 'Frame.dart';
part 'Rectangle.dart';

class TextureAtlas {
  List<TextureFrame> frames;

  TextureAtlas.fromTileset(ImageElement sourceImage, int tileHeight, int tileWidth) {
    if (sourceImage.height > tileHeight &&
          sourceImage.height % tileHeight == 0 &&
          sourceImage.width > tileWidth &&
          sourceImage.width % tileWidth == 0) {
      frames = [];
      int number = 1;
      for (int tileY = 0; tileY < sourceImage.height; tileY += tileHeight) {
        for (int tileX = 0; tileX < sourceImage.width; tileX += tileWidth) {
          frames.add(new TextureFrame.fromTileSet(number.toString(), tileX, tileY, tileWidth, tileHeight));
          number++;
        }
      }
    } else {
      throw new Exception("Les tailles de l'image et d'un tile ne sont pas compatibles");
    }
  }

  Map toJson() {
    var jso = [];
    frames.forEach((TextureFrame frame) {
      jso.add(frame.toJson());
    });
    return {"frames": jso};
  }
}