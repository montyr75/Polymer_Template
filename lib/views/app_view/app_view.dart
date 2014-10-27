library app_view;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:logging/logging.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:polymer_expressions/filter.dart';
import '../../model/global.dart';
import '../../utils/filters.dart';

@CustomTag('app-view')
class AppView extends PolymerElement {

  @observable String bindingTest = "Binding is working...";

  // filters and transformers can be referenced as class fields
  final Transformer asInteger = new StringToInt();

  // non-visual initialization can be done here
  AppView.created() : super.created() {
    _initLog();
  }

  void _initLog() {
    DateFormat dateFormatter = new DateFormat("H:m:s.S");

    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((LogRecord rec) {
      print('${rec.level.name} (${dateFormatter.format(rec.time)}): ${rec.message}');
    });
  }

  // life-cycle method called by the Polymer framework when the element is attached to the DOM
  @override void attached() {
    super.attached();
    log.info("$runtimeType::attached()");
  }

  // a sample event handler function
  void eventHandler(Event event, var detail, Element target) {
    log.info("$runtimeType::eventHandler()");
  }

  void submit(Event event, var detail, Element target) {
    // prevent app reload on <form> submission
    event.preventDefault();
  }
}

