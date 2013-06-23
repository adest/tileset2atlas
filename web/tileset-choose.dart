import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'src/model.dart';

class TilesetChoose extends WebComponent {
  InputElement _chooser;
  FileReader _reader;

  TilesetChoose() {
    _reader = new FileReader();
    _reader.onLoad.listen(_onReaderComplete);
  }

  void inserted() {
    _chooser = this.query("#tileset-chooser");
  }

  void loadTileset() {
    if (_chooser.files.length > 0) {
      _reader.readAsDataUrl(_chooser.files[0]);
    }
  }

  void _onReaderComplete(ProgressEvent event) {
    app.tileset.image.src = _reader.result;
  }
}