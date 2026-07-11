import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce/common/widgets/images/rounded_image.dart';
import 'package:e_commerce/features/dashboard/home/logic/home_cubit.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePromoSlider extends StatelessWidget {
  const HomePromoSlider({super.key, required this._banners});

  final List<String> _banners;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) =>
                context.read<HomeCubit>().updatePageIndicator(index),
          ),
          items: [
            for(final banner in _banners)
            RoundedImage(
              imageUrl: banner,
              width: double.infinity,
              height: 200,
            ),
          ],
        ),
        SizedBox(height: CSizes.spaceBetweenItems),

        BlocBuilder<HomeCubit, int>(
          builder: (_, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < _banners.length; i++)
                  CCircularContainer(
                    height: 4,
                    width: 20,
                    backgroundColor: state == i
                        ? CColors.primary
                        : CColors.grey,
                    margin: EdgeInsets.only(right: 10),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
