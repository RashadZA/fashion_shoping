part of 'design_utils.dart';

extension WidgetExtension on Widget{

  Widget defaultLoaderOfCupertinoActivity({
    Color? color,
    double? radius,
  }) => Center(
    child: CupertinoActivityIndicator(
      color: color ?? whiteColor,
      radius: radius ?? 10.0,
    ),
  );

  Widget defaultLoaderOfCircularProgressIndicator({
    Color? color,
    Color? backgroundColor,
    double? strokeWidth,
    double? value,
  }){
    return CircularProgressIndicator(
      value: value,
      backgroundColor: backgroundColor ?? primaryColor.withOpacity(0.3),
      color: color ?? primaryColor,
      strokeWidth: strokeWidth ?? 4.0,
    );
  }

  Container defaultContainer({
    double hP = defaultPadding,
    double vP = defaultPadding,
    double vM = 0,
    Color? backgroundColor,
    double hM = 0,
    double borderRadius = defaultBorderRadius,
  }) =>
      Container(
        decoration: BoxDecoration(
          boxShadow: containerShadow,
          color: backgroundColor ?? whiteColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.symmetric(horizontal: hP, vertical: vP),
        margin: EdgeInsets.symmetric(horizontal: hM, vertical: vM),
        child: this,
      );

  Widget showShimmer() {
    return Shimmer.fromColors(
      baseColor: whiteColor,
      highlightColor: Colors.grey.shade200,
      child: this,
    );
  }

}

extension StringExtension on String {
  dynamic errorSnackBar() {
    Get
      ..closeAllSnackbars()
      ..snackbar(
        'Error !',
        this,
        backgroundColor: Colors.red.shade300,
        colorText: whiteColor,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      );
  }

  dynamic successSnackBar({void Function(GetSnackBar)? onTap}) {
    Get
      ..closeAllSnackbars()
      ..snackbar(
        'Success !',
        this,
        onTap: onTap,
        backgroundColor: Colors.green.shade300,
        colorText: whiteColor,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      );
  }

  dynamic infoSnackBar() {
    Get
      ..closeAllSnackbars()
      ..snackbar(
        'Info !',
        this,
        colorText: blackColor,
        backgroundColor: Colors.white38,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      );
  }
}

List<BoxShadow> get containerShadow => const [
  BoxShadow(
    blurRadius: 10,
    offset: Offset(0, 4),
    color: Color(0x0f00498a),
  ),
];

class ImageErrorHandle extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final double? radius;
  final BoxFit? fit;
  final BorderRadiusGeometry? borderRadius;

  const ImageErrorHandle({
    super.key,
    required this.imageUrl,
    this.height,
    this.borderRadius,
    this.width,
    this.radius,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(radius ?? defaultBorderRadius),
      child: CachedNetworkImage(
          height: height,
          width: width,
          imageUrl: imageUrl,
          fit: fit ?? BoxFit.fill,
          progressIndicatorBuilder:
              (context, url, downloadProgress) => Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: errorColor,
                  borderRadius: borderRadius ?? BorderRadius.circular(radius ?? defaultBorderRadius),
                ),
                alignment: Alignment.center,
            child: defaultLoaderOfCircularProgressIndicator(
              value: downloadProgress.progress,
            ),
          ),
          errorWidget: (context, url, error) =>
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    color: errorColor,
                    borderRadius: borderRadius ?? BorderRadius.circular(radius ?? defaultBorderRadius),
                ),
                alignment: Alignment.center,
                child: const Icon(Icons.error,color: redAccentColor,),
              )
      ),
    );
  }
}

Widget defaultLoaderOfCupertinoActivityForStateFullWidget({
  Color? color,
  double? radius,
}) => Center(
  child: CupertinoActivityIndicator(
    color: color ?? whiteColor,
    radius: radius ?? 10.0,
  ),
);

Widget defaultLoaderOfCircularProgressIndicatorForStateFullWidget({
  Color? color,
  Color? backgroundColor,
  double? strokeWidth,
  double? value,
}){
  return CircularProgressIndicator(
    value: value,
    backgroundColor: backgroundColor ?? primaryColor.withOpacity(0.3),
    color: color ?? primaryColor,
    strokeWidth: strokeWidth ?? 4.0,
  );
}

Widget titleText({
  required String title
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: AppTextTheme.text16.copyWith(
          color: secondaryTextColor,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
    ],
  );
}

String maskCardNumber(String cardNumber) {
  // Get the last 4 digits of the card number
  String lastFourDigits = cardNumber.substring(cardNumber.length - 4);

  // Create the masked card number format
  return "* * * *   * * * *   * * * *   $lastFourDigits";
}