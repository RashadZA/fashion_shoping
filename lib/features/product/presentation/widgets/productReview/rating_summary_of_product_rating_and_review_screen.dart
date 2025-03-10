import 'package:fashion_shoping/core/components/widgets/rating_star_custom_widget.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RatingSummaryOfProductRatingAndReviewScreen extends StatelessWidget {
  const RatingSummaryOfProductRatingAndReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "4.3",
                style: AppTextTheme.text44.copyWith(
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.visible,
                ),
              ),
              Text(
                "23 ratings",
                style: AppTextTheme.text18.copyWith(
                  color: secondaryTextColor,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: Get.width - 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildStarRatingBar(stars: 5, count: 12),
              BuildStarRatingBar(stars: 4, count: 5),
              BuildStarRatingBar(stars: 3, count: 4),
              BuildStarRatingBar(stars: 2, count: 2),
              BuildStarRatingBar(stars: 1, count: 0),
            ],
          ),
        ),
      ],
    );
  }
}

class BuildStarRatingBar extends StatelessWidget {
  final double stars;
  final int count;
  const BuildStarRatingBar({
    super.key,
    required this.stars,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingStarCustomWidget(rating: stars,emptyStarWillShow: false,),
        const SizedBox(width: 4),
        Expanded(
          child: LinearProgressIndicator(
            value: count / 12,
            backgroundColor: Colors.grey.shade300,
            color: Colors.redAccent,
            minHeight: 8,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          "$count",
          style: AppTextTheme.text14.copyWith(
            color: secondaryTextColor,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    );
  }
}
