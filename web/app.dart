import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'src/model.dart';

class Tile2atlasApp extends WebComponent {

  Tile2atlasApp() {
    app.tileset.image.onLoad.listen(_onTilesetLoad);
  }

  void _onTilesetLoad(Event e) {
    app.currentView = ViewEnum.CONFIGURE;
  }
}