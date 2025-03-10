import 'package:fashion_shoping/core/components/widgets/image_handle_from_network_network.dart';
import 'package:fashion_shoping/core/components/widgets/rating_star_custom_widget.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RatingAndReviewScreenReviewCardWidget extends StatelessWidget {
  final String name;
  final String date;
  final double rating;
  final String review;
  final String image;
  final bool imageWillShow;
  const RatingAndReviewScreenReviewCardWidget({
    super.key,
    required this.name,
    required this.date,
    required this.rating,
    required this.review,
    required this.image,
    required this.imageWillShow,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      shadowColor: cardShadowColor,
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageHandleFromNetworkWidget(
                  imageUrl: image,
                  height: 50,
                  width: 50,
                  radius: 100,
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width - 110,
                      child: Text(
                        name,
                        style: AppTextTheme.text16.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RatingStarCustomWidget(rating: rating),
                        SizedBox(
                          width: Get.width - 210,
                          child: Text(
                              date,
                              textAlign: TextAlign.end,
                              style: AppTextTheme.text12.copyWith(
                                  color: secondaryTextColor,
                              ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
                review,
                style: AppTextTheme.text14.copyWith(
                  overflow: TextOverflow.visible,
                ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.thumb_up, color: Colors.grey.shade400, size: 18),
                const SizedBox(width: 4),
                Text(
                  "Helpful",
                  style: AppTextTheme.text14.copyWith(
                    color: secondaryTextColor,
                  ),
                ),
              ],
            ),
            imageWillShow ? SizedBox(
              width: Get.width,
              height: 170,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 0,right: 0, top: 10, bottom: 10),
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) => ImageHandleFromNetworkWidget(
                  imageUrl: image,
                  height: 150,
                  width: 150,
                  radius: 10,
                ),
              ),
            ) : SizedBox(width: 0,height: 0,),
          ],
        ),
      ),
    );
  }
}
