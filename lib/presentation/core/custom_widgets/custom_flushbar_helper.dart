import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';

dynamic customErrorFlushbar({required String message}) =>
  FlushbarHelper.createError(
    duration: const Duration(seconds: 5),
    message: message
  );