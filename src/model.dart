library model;

import 'dart:html';
import 'package:web_ui/observe.dart';
import '../../src/textureatlas/textureatlas.dart';
import 'package:web_ui/observe/observable.dart' as __observe;


class ViewEnum {
  final _value;
  const ViewEnum._internal(this._value);
  toString() => 'ViewEnum.$_value';

  static const CHOOSE     = const ViewEnum._internal("choose");
  static const CONFIGURE  = const ViewEnum._internal("conf");
  static const EXPORT     = const ViewEnum._internal("export");
}

@observable
class TilesetModel extends Observable  {
  final ImageElement image = new ImageElement();
  int __$tileWidth = 32;
  int get tileWidth {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'tileWidth');
    }
    return __$tileWidth;
  }
  set tileWidth(int value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'tileWidth',
          __$tileWidth, value);
    }
    __$tileWidth = value;
  }
  int __$tileHeight = 32;
  int get tileHeight {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'tileHeight');
    }
    return __$tileHeight;
  }
  set tileHeight(int value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'tileHeight',
          __$tileHeight, value);
    }
    __$tileHeight = value;
  }
}

@observable
class AppModel extends Observable  {
  String __$titre = "Tile2Atlas";
  String get titre {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'titre');
    }
    return __$titre;
  }
  set titre(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'titre',
          __$titre, value);
    }
    __$titre = value;
  }
  ViewEnum __$currentView = ViewEnum.CHOOSE;
  ViewEnum get currentView {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'currentView');
    }
    return __$currentView;
  }
  set currentView(ViewEnum value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'currentView',
          __$currentView, value);
    }
    __$currentView = value;
  }
  TilesetModel __$tileset = new TilesetModel();
  TilesetModel get tileset {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'tileset');
    }
    return __$tileset;
  }
  set tileset(TilesetModel value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'tileset',
          __$tileset, value);
    }
    __$tileset = value;
  }
  TextureAtlas __$textureAtlas;
  TextureAtlas get textureAtlas {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'textureAtlas');
    }
    return __$textureAtlas;
  }
  set textureAtlas(TextureAtlas value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'textureAtlas',
          __$textureAtlas, value);
    }
    __$textureAtlas = value;
  }
}

final AppModel app = new AppModel();
//# sourceMappingURL=model.dart.map