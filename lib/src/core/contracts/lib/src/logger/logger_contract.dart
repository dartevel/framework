abstract class LoggerContract {
  void emergency($message);
  void alert($message);
  void critical($message);
  void error($message);
  void warning($message);
  void notice($message);
  void info($message);
  void debug($message);
  void log($level, $message);
}
