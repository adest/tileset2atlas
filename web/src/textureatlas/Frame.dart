part of textureatlas;

class Frame extends Rectangle {
  int x;
  int y;

  Frame(this.x, this.y, w, h) : super(w, h);

  Map toJson() => {"x": x, "y": y, "w": w, "h": h};
}