import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopywell/core/constants/constants.dart';
import 'package:shopywell/presentation/view/home/widgets/icon_text.dart';
class ItemCount extends StatelessWidget {
  const ItemCount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Text(
              '52,082+ Iteams ',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
            Spacer(),
            iconTextButton(icon: AppIcons.filter, text: 'Sort'),
            SizedBox(width: 5.w,),
            iconTextButton(icon: AppIcons.sort, text: 'Filter'),
          ],
        ),
      );
  }
}
