import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopywell/core/constants/constants.dart';
import 'package:shopywell/presentation/view/profile/widget/bank_account_details.dart';
import 'package:shopywell/presentation/view/profile/widget/business_details.dart';
import 'package:shopywell/presentation/view/profile/widget/personal_details.dart';
import 'package:shopywell/presentation/view/profile/widget/profile_image.dart';
import 'package:shopywell/presentation/view/widgets/custom_button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 24.h,
            children: [
              ProfileImage(),
              PersonalDetails(),
              BusinessDetails(),
              BankAccountDetails(),
              elevatedButton(text: StringConstants.save, onPressed: () {}),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
