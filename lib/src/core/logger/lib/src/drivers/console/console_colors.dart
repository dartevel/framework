import '../../levels.dart';

class ConsoleColors {
  static const String RESET = '\u001b[0m';
  static const String BLACK = '\u001b[0m\u001b[30m';
  static const String RED = '\u001b[0m\u001b[31m';
  static const String GREEN = '\u001b[0m\u001b[32m';
  static const String YELLOW = '\u001b[0m\u001b[33m';
  static const String BLUE = '\u001b[0m\u001b[34m';
  static const String MAGENTA = '\u001b[0m\u001b[35m';
  static const String CYAN = '\u001b[0m\u001b[36m';
  static const String WHITE = '\u001b[0m\u001b[37m';
}

Map<Levels, String> levelPrefix = {
  Levels.CRITICAL: '👾 ',
  Levels.DEBUG: '👀 ',
  Levels.INFO: '👻 ',
  Levels.ERROR: '⚠️ ',
  Levels.NOTICE: '😡 ',
};

final Map<Levels, String> levelColor = {
  Levels.CRITICAL: ConsoleColors.RED,
};


// /// Default ansi color for logger
// class AnsiColor {
//   /// Wrap text with red color
//   static String red(String v) => '\u001b[0m\u001b[31m$v';

//   /// Wrap text with black color
//   static String black(String v) => '\u001b[0m\u001b[30m$v';

//   /// Wrap text with green color
//   static String green(String v) => '\u001b[0m\u001b[32m$v';

//   /// Wrap text with yellow color
//   static String yellow(String v) => '\u001b[0m\u001b[33m$v';

//   /// Wrap text with blue color
//   static String blue(String v) => '\u001b[0m\u001b[34m$v';

//   /// Wrap text with magenta color
//   static String magenta(String v) => '\u001b[0m\u001b[35m$v';

//   /// Wrap text with cyan color
//   static String cyan(String v) => '\u001b[0m\u001b[36m$v';

//   /// Wrap text with white color
//   static String white(String v) => '\u001b[0m\u001b[37m$v';

//   /// reset color
//   static String resetWith(String v) => '\u001b[0m$v';

//   /// Wrap text with grey color
//   static String hint(String v) => '\u001b[0m\u001b[38;5;${240}m$v';
// }

// enum AnsiColors {
//   // Wrap text with red color
//   red,

//   /// Wrap text with black color
//   black,

//   /// Wrap text with green color
//   green,

//   /// Wrap text with yellow color
//   yellow,

//   /// Wrap text with blue color
//   blue,

//   /// Wrap text with magenta color
//   magenta,

//   /// Wrap text with cyan color
//   cyan,

//   /// Wrap text with white color
//   white,
// }

// extension AnsiColorsExt on AnsiColors {
//   String colorize(String v) {
//     switch (this) {
//       case AnsiColors.red:
//         return AnsiColor.red(v);
//       case AnsiColors.black:
//         return AnsiColor.black(v);
//       case AnsiColors.green:
//         return AnsiColor.green(v);
//       case AnsiColors.yellow:
//         return AnsiColor.yellow(v);
//       case AnsiColors.blue:
//         return AnsiColor.blue(v);
//       case AnsiColors.magenta:
//         return AnsiColor.magenta(v);
//       case AnsiColors.cyan:
//         return AnsiColor.cyan(v);
//       case AnsiColors.white:
//         return AnsiColor.white(v);
//     }
//   }
// }