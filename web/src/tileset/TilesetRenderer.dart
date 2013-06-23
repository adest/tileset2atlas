part of tileset;

class TilesetRenderer {
  ImageElement image;
  int tileWidth, tileHeight;

  TilesetRenderer.fromImage(this.image, this.tileWidth, this.tileHeight) {
    if (_xTileCount % 1 != 0) {
      throw new Exception("Le tileset n'a pas une largeur multiple de ${tileWidth}");
    }
    if (_yTileCount % 1 != 0) {
      throw new Exception("Le tileset n'a pas une hauteur multiple de ${tileHeight}");
    }
  }


  void drawTile(int n, CanvasRenderingContext2D context, int x, int y) {
    int xSourceTile = n % xTileCount;
    if (xSourceTile == 0) {xSourceTile = xTileCount;}
    int ySourceTile = (n / xTileCount).ceil();

    int xSource = (xSourceTile - 1) * tileWidth;
    int ySource = (ySourceTile - 1) * tileHeight;

    context.drawImageScaledFromSource(image, xSource, ySource, tileWidth, tileHeight, x, y, tileWidth, tileHeight);
  }

  num get _xTileCount => image.width / tileWidth;
  num get _yTileCount  => image.height / tileHeight;
  int get xTileCount => _xTileCount.toInt();
  int get yTileCount => _yTileCount.toInt();
}