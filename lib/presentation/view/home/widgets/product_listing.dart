import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget productItem() {
  return SizedBox(
    width: double.infinity,
    height: 271.h,
    child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 180.w,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 124.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      spacing: 10.h,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Women Printed Kurta',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            height: 16 / 12,
                            letterSpacing: 0,
                          ),
                        ),
      
                        Text(
                          'Neque porro quisquam est qui dolorem ipsum quia',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            height: 16 / 12,
                            letterSpacing: 0,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '₹1500',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                height: 16 / 12,
                                letterSpacing: 0,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '₹2000 ',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  WidgetSpan(child: SizedBox(width: 6)),
                                  TextSpan(
                                    text: '40%Off',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.red,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
      
                        Row(
                          spacing: 5,
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 15,
                              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder:
                                  (context, _) =>
                                      Icon(Icons.star, color: Colors.amber),
                              onRatingUpdate: (rating) {},
                            ),
                            Text(
                              '56890',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                height: 16 / 12,
                                letterSpacing: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
