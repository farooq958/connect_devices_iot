import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class PlacesCategory extends StatelessWidget {
  final String categoryState;

  const PlacesCategory({super.key, required this.categoryState});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh,
      width: 1.sw,
      color: AppColors.white,
      alignment: Alignment.topCenter,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          //search text field
          Container(
            height: 40.sp,
            width: 337.sp,
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 40.65.sp),
            child: TextFormField(
              controller: AppControllers.homeTabPlacesSearchController,
              cursorColor: AppColors.themeColorOne,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
                color: AppColors.greyOne,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Search Place',
                hintMaxLines: 1,
                hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp,
                  color: AppColors.greyFive,
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: AppColors.themeColorOne,
                  size: 20.sp, //actual 14.sp
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.greySix,
                    width: 1.sp,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.themeColorThree,
                    width: 1.sp,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.sp),

          //list of places
          Container(
            height: 500.sp,
            width: 1.sw,
            color: AppColors.white,
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: 100.sp),
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Divider(
                  height: 10.sp,
                  thickness: 1.sp,
                  color: AppColors.greyThree,
                ),
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 90.sp,
                  width: 1.sw,
                  color: AppColors.white,
                  padding: EdgeInsets.symmetric(horizontal: 22.sp),
                  child: Row(
                    children: [
                      //leading icon
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 50.sp,
                          margin: EdgeInsets.symmetric(horizontal: 5.sp),
                          decoration: BoxDecoration(
                            color: AppColors.greySeven,
                            borderRadius: BorderRadius.circular(15.sp),
                          ),
                          child: Icon(
                            Icons.home_filled,
                            size: 25.sp,
                            color: AppColors.themeColorOne,
                          ),
                        ),
                      ),

                      //place name
                      Expanded(
                        flex: 10,
                        child: InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {
                            AppControllers.bottomNavigationBarController
                                .jumpToPage(6);
                          },
                          child: Container(
                            height: 71.sp,
                            color: AppColors.white,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 5.sp),
                            child: Text(
                              'Place name',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                color: AppColors.greyTwo,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
