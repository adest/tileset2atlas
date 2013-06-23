library model;

import 'dart:html';
import 'package:web_ui/observe.dart';
import 'textureatlas/textureatlas.dart';

class ViewEnum {
  final _value;
  const ViewEnum._internal(this._value);
  toString() => 'ViewEnum.$_value';

  static const CHOOSE     = const ViewEnum._internal("choose");
  static const CONFIGURE  = const ViewEnum._internal("conf");
  static const EXPORT     = const ViewEnum._internal("export");
}

@observable
class TilesetModel {
  final ImageElement image = new ImageElement();
  int tileWidth = 32;
  int tileHeight = 32;
}

@observable
class AppModel {
  String        titre   = "Tile2Atlas";
  ViewEnum      currentView = ViewEnum.CHOOSE;
  TilesetModel  tileset = new TilesetModel();
  TextureAtlas  textureAtlas;
}

final AppModel app = new AppModel();