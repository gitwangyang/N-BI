
import 'package:logger/logger.dart';

class LogUtils {
  var logger = Logger(printer: PrettyPrinter(),);

  var loggerNoStack = Logger(
    printer: PrettyPrinter(methodCount: 0),
  );
}