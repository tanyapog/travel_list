import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String fd() => DateFormat.d().format(this);
  String fMMM() => DateFormat.MMM().format(this);
  String fy() => DateFormat.y().format(this);
  String fdMMM() => '${DateFormat.d().format(this)} ${DateFormat.MMM().format(this)}';
  String fMMMy() => DateFormat.yMMM().format(this);
  String fdMMMy() => '${DateFormat.d().format(this)} ${DateFormat.yMMM().format(this)}';
}
