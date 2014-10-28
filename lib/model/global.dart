library model.global;

import 'package:logging/logging.dart';
import 'package:intl/intl.dart' show DateFormat;

// define logger
final Logger log = new Logger("Polymer_Template");

void initLog() {
  DateFormat dateFormatter = new DateFormat("H:m:s.S");

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.level.name} (${dateFormatter.format(rec.time)}): ${rec.message}');
  });
}
