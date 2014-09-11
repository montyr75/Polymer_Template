library app_view;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:polymer_expressions/filter.dart';
import '../../utils/filters.dart';

@CustomTag('app-view')
class AppView extends PolymerElement {

  static const CLASS_NAME = "AppView";

  // constants
  static const String SAMPLE_CONSTANT = "SAMPLE_CONSTANT";

  @observable String bindingTest = "Binding is working...";

  // filters and transformers can be referenced as class fields
  final Transformer asInteger = new StringToInt();

  // non-visual initialization can be done here
  AppView.created() : super.created();

  // life-cycle method called by the Polymer framework when the element is attached to the DOM
  @override void attached() {
    super.attached();
    print("$CLASS_NAME::attached()");
  }

  // a sample event handler function
  void eventHandler(Event event, var detail, Element target) {
    print("$CLASS_NAME::eventHandler()");
  }

  void submit(Event event, var detail, Element target) {
    // prevent app reload on <form> submission
    event.preventDefault();
  }
}
