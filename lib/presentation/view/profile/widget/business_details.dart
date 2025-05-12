import 'package:flutter/material.dart';
import 'package:shopywell/core/constants/constants.dart';
import 'package:shopywell/presentation/view/profile/widget/profile_details_widget.dart';
import 'package:shopywell/presentation/view/profile/widget/profile_fields.dart';

class BusinessDetails extends StatelessWidget {
  const BusinessDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileDetailsWidget(
      title: StringConstants.businessAddressDetails,
      divider: true,
      fields: [
        ProfileField(
          textfieldName: StringConstants.pincode,
          controller: TextEditingController(text: "450116"),
        ),
        ProfileField(
          textfieldName: StringConstants.address,
          readOnly: true,
          controller: TextEditingController(text: "216 St Paul's Rd"),
        ),
        ProfileField(
          textfieldName: StringConstants.city,
          readOnly: true,
          controller: TextEditingController(text: "London"),
        ),
        ProfileField(
          textfieldName: StringConstants.state,
          readOnly: true,
          controller: TextEditingController(text: "N1 2LL"),
        ),
        ProfileField(
          textfieldName: StringConstants.country,
          readOnly: true,
          controller: TextEditingController(text: "United Kingdom"),
        ),
      ],
    );
  }
}
