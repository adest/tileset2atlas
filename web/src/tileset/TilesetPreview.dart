part of tileset;

class TilesetPreview {

  TilesetRenderer _renderer;

  TilesetPreview.fromImage(ImageElement source, int tileWidth, int tileHeight) {
    _renderer = new TilesetRenderer.fromImage(source, tileWidth, tileHeight);
  }

  void preview(CanvasElement renderArea, {bool drawGrid : false, String gridStyle : 'red'}) {
    int tileNumber = 1;
    var context = renderArea.context2D;
    renderArea.width = _renderer.xTileCount * _renderer.tileWidth;
    renderArea.height = _renderer.yTileCount * _renderer.tileHeight;
    context.strokeStyle = gridStyle;
    context.clearRect(0, 0, renderArea.width, renderArea.height);
    for (int i = 0; i < _renderer.yTileCount; i++) {
      for (int j = 0; j < _renderer.xTileCount; j++) {
        int aX = j * tileWidth;
        int aY = i * tileHeight;
        int bX = aX + tileWidth;
        int bY = aY + tileHeight;

        _renderer.drawTile(tileNumber, context, aX, aY );
        context.strokeRect(aX, aY, bX, bY);
        tileNumber++;
      }
    }
  }

  int get tileWidth => _renderer.tileWidth;
  set tileWidth(int value) => _renderer.tileWidth = value;
  int get tileHeight => _renderer.tileHeight;
  set tileHeight(int value) => _renderer.tileHeight = value;
}