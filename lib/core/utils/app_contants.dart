part of 'design_utils.dart';

extension WidgetExtension on Widget{

  Widget defaultLoader({
    Color? color,
    double? radius,
}) => Center(
    child: CupertinoActivityIndicator(
      color: color ?? whiteColor,
      radius: radius ?? 10.0,
    ),
  );

}