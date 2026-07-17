import 'package:e_commerce/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CChoiceChip extends StatelessWidget {
  const CChoiceChip({
    super.key,
    required this.label,
    required this.selected,
    this.onSelected,
  });

  final String label;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final color = HelperFunctions.getColor(label);
    final isColor = color != null;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(label),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? CColors.white : null),
        avatar: isColor
            ? CCircularContainer(width: 50, height: 50, backgroundColor: color)
            : null,
        shape: isColor ? CircleBorder() : null,
        labelPadding: isColor ? EdgeInsets.zero : null,
        padding: isColor ? EdgeInsets.zero : null,
        backgroundColor: color,
      ),
    );
  }
}
