import 'package:e_commerce/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeHeaderContainer extends StatelessWidget {
  const HomeHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdges(
      child: Container(
        color: CColors.primary,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CCircularContainer(
                  backgroundColor: CColors.textWhite.withAlpha(
                    (255 * 0.1).toInt(),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CCircularContainer(
                  backgroundColor: CColors.textWhite.withAlpha(
                    (255 * 0.1).toInt(),
                  ),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
