part of textureatlas;

class Rectangle {
  int w;
  int h;

  Rectangle(this.w, this.h);

  Map toJson() => {"w": w, "h": h};
}