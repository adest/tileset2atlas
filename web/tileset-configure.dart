import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'src/model.dart';
import 'src/tileset/TileSet.dart';
import 'src/textureatlas/textureatlas.dart';

class TilesetConfigure extends WebComponent {
  TilesetPreview _tilesetPreview;
  CanvasElement tilesetArea;

  String get tileWidth => app.tileset.tileWidth.toString();
  String get tileHeight => app.tileset.tileHeight.toString();
  set tileWidth(String value) => app.tileset.tileWidth = int.parse(value, onError: (v) {return 0;});
  set tileHeight(String value) => app.tileset.tileHeight = int.parse(value, onError: (v) {return 0;});

  void inserted() {
    tilesetArea = this.query("#tileset-area");
    _tilesetPreview = new TilesetPreview.fromImage(
        app.tileset.image,
        app.tileset.tileWidth,
        app.tileset.tileHeight);
    _detectDefinition();
    renderTileset();
  }

  void renderTileset() {
    if (  app.tileset.image.width % app.tileset.tileWidth == 0 &&
          app.tileset.image.height % app.tileset.tileHeight == 0) {
      _tilesetPreview.tileWidth = app.tileset.tileWidth;
      _tilesetPreview.tileHeight = app.tileset.tileHeight;
      _tilesetPreview.preview(tilesetArea, drawGrid: true, gridStyle: 'red');
    }
  }

  void buildAtlas() {
    app.textureAtlas = new TextureAtlas.fromTileset(
        app.tileset.image,
        app.tileset.tileHeight,
        app.tileset.tileWidth);
    app.currentView = ViewEnum.EXPORT;
  }

  void _detectDefinition() {
    var tileDefinition = null;
    for (int def in [128, 64, 32 , 16, 8]) {
      if (_acceptDefinition(app.tileset.image, def)) {
        tileDefinition = def;
        break;
      }
    }
    if (tileDefinition != null) {
      app.tileset.tileWidth = tileDefinition;
      app.tileset.tileHeight = tileDefinition;
    }
  }

  bool _acceptDefinition(ImageElement img, int definition)
  => img.height % definition == 0 && img.width % definition == 0;
}

