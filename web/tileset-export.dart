import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'dart:json';
import 'package:js/js.dart' as js;
import 'src/model.dart';

class TilesetExport extends WebComponent {

  @observable
  String jso;

  TilesetExport() {
    jso = stringify(app.textureAtlas);
  }

  void clipboard() {
    js.context.window.prompt("Copy to clipboard: Ctrl+C, Enter", jso);
  }
}