import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../images/circular_image.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      leading: CircularImage(
        image: 'assets/images/user/profile.png',
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'SINESTA',
        style: textTheme.headlineSmall!.apply(color: CColors.white),
      ),
      subtitle: Text(
        'sinesta@example.com',
        style: textTheme.bodyMedium!.apply(color: CColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(Iconsax.edit, color: CColors.white),
      ),
    );
  }
}
