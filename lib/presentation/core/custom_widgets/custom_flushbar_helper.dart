import 'package:another_flushbar/flushbar_helper.dart';

dynamic customErrorFlushbar({required String message}) =>
  FlushbarHelper.createError(
    message: message,
    duration: const Duration(seconds: 5),
  );