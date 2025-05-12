import 'package:flutter/material.dart';
import 'package:shopywell/core/constants/constants.dart';
import 'package:shopywell/presentation/view/profile/widget/profile_details_widget.dart';
import 'package:shopywell/presentation/view/profile/widget/profile_fields.dart';

class BankAccountDetails extends StatelessWidget {
  const BankAccountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileDetailsWidget(
      title: StringConstants.bankAccountDetails,
      fields: [
        ProfileField(
          hideText: true,
          hideTextCharacter:"X",
          textfieldName: StringConstants.bankAccountNumber,
          controller: TextEditingController(text: "450116"),
        ),
        ProfileField(
          textfieldName: StringConstants.accountHolderName,
          readOnly: true,
          controller: TextEditingController(text: "Abhiraj Sisodiya"),
        ),
        ProfileField(
          textfieldName:StringConstants.ifsc,
          readOnly: true,
          controller: TextEditingController(text: "SBIN00428"),
        ),
      ],
    );
  }
}
