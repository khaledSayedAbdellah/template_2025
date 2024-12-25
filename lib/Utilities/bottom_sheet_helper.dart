import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utilities/theme_helper.dart';

class BottomSheetHelper {
  static Future bottomSheet({
    required BuildContext context,
    required Widget widget,
    double? radius,
    Color? backgroundColor,
    bool isDismissible=true,
    Function? onDismiss,
  }) async {
    showModalBottomSheet(
      isDismissible: isDismissible,
      barrierColor: Colors.black.withOpacity(0.1),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(radius??44.r))),
      backgroundColor:backgroundColor?? ThemeClass.of(context).backGroundColor,
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) => widget,
    ).then((_)=> onDismiss?.call());
  }
}
