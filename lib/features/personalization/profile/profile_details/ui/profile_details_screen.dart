import 'package:e_commerce/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/profile/profile_details/ui/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: CustomAppbar(
        title: Text('Profile', style: textTheme.headlineMedium),
        showBackArrow: true,
      ),
      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              //   Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircularImage(
                      image: 'assets/images/user/profile.png',
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              //   Details
              SizedBox(height: CSizes.spaceBetweenItems / 2),
              Divider(),
              SizedBox(height: CSizes.spaceBetweenItems),

              // Heading Profile Info
              SectionHeading(title: 'Profile Information', showButton: false),
              SizedBox(height: CSizes.spaceBetweenItems),

              ProfileMenu(onPressed: () {}, title: 'Name', value: 'SINESTA'),
              ProfileMenu(onPressed: () {}, title: 'Username', value: 'snsta'),

              SizedBox(height: CSizes.spaceBetweenItems),
              Divider(),
              SizedBox(height: CSizes.spaceBetweenItems),

              //   Heading Personal Info
              SectionHeading(title: 'Personal Information', showButton: false),
              SizedBox(height: CSizes.spaceBetweenItems),

              ProfileMenu(onPressed: () {}, title: 'User ID', value: '234234', icon: Iconsax.copy,),
              ProfileMenu(onPressed: () {}, title: 'E-mail', value: 'sinesta@example.com'),
              ProfileMenu(onPressed: () {}, title: 'Phone Number', value: '+91 12345 67890'),
              ProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              ProfileMenu(onPressed: () {}, title: 'Date of Birth', value: '01 Jan, 1990'),
              Divider(),
              SizedBox(height: CSizes.spaceBetweenItems),

              Center(child: TextButton(onPressed: () {

              }, child: Text('Close Account', style: TextStyle(color: Colors.red),)),)
            ],
          ),
        ),
      ),
    );
  }
}
