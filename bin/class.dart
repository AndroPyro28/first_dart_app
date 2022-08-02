import 'dart:convert';
import 'dart:mirrors';

import 'package:meta/meta.dart';

// part './otherfile.dart';

extension StringDuplication on String {
  String duplicate() {
    return '$this $this';
  }
}
