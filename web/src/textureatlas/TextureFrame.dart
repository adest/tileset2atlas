part of textureatlas;

class TextureFrame {
  String filename;
  Frame frame;
  bool rotated;
  bool trimmed;
  Frame spriteSourceSize;
  Rectangle sourceSize;

  TextureFrame.fromTileSet(this.filename, int x, int y, int w, int h) {
    frame = new Frame(x, y, w, h);
    rotated = false;
    trimmed = false;
    spriteSourceSize = new Frame(0, 0, w, h);
    sourceSize = new Rectangle(w, h);
  }

  Map toJson() => {
    "filename": filename,
    "frame": frame.toJson(),
    "rotated": rotated,
    "trimmed": trimmed,
    "spriteSourceSize": spriteSourceSize.toJson(),
    "sourceSize": sourceSize.toJson()
  };
}