import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class FavoriteCategoryContainer extends StatefulWidget {
  final String categoryState;

  const FavoriteCategoryContainer({super.key, required this.categoryState});

  @override
  State<FavoriteCategoryContainer> createState() =>
      _FavoriteCategoryContainerState();
}

enum MenuItem {
  favourite,
  edit,
  delete,
}

class _FavoriteCategoryContainerState extends State<FavoriteCategoryContainer> {
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
              controller: AppControllers.homeTabMyFavoritesSearchController,
              cursorColor: AppColors.themeColorOne,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
                color: AppColors.greyOne,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Search Favorite Device',
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

          //list of favorite devices
          Container(
            height: 500.sp,
            width: 1.sw,
            color: AppColors.white,
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: 100.sp),
              physics: const BouncingScrollPhysics(),
              itemCount: 3,
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Divider(
                  height: 30.sp,
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
                        flex: 3,
                        child: Container(
                          height: 58.sp,
                          margin: EdgeInsets.symmetric(horizontal: 5.sp),
                          decoration: BoxDecoration(
                            color: AppColors.greySeven,
                            borderRadius: BorderRadius.circular(15.sp),
                          ),
                          child: Icon(
                            Icons.developer_board,
                            size: 35.sp,
                            color: AppColors.themeColorOne,
                          ),
                        ),
                      ),

                      //title, subTitle, and wifi icon
                      Expanded(
                        flex: 9,
                        child: InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {
                            AppControllers.bottomNavigationBarController
                                .jumpToPage(4);
                          },
                          child: Container(
                            height: 71.sp,
                            color: AppColors.white,
                            padding: EdgeInsets.only(
                              left: 5.sp,
                              bottom: 10.sp,
                            ),
                            child: Row(
                              children: [
                                //title and sub title
                                Expanded(
                                  flex: 3,
                                  child: ListView(
                                    shrinkWrap: true,
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: [
                                      Text(
                                        'Device',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyTwo,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                      Text(
                                        'Group name',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyTwo,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //wifi icon
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(bottom: 10.sp),
                                    child: Icon(
                                      Icons.wifi,
                                      color: AppColors.greenTwo,
                                      size: 15.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      //switch button
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 90.sp,
                          decoration: BoxDecoration(
                            color: AppColors.creamy,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                          child: Stack(
                            children: [
                              //on off texts
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  height: 71.sp,
                                  width: 46.sp,
                                  decoration: BoxDecoration(
                                    color: AppColors.creamy,
                                    borderRadius: BorderRadius.circular(10.sp),
                                  ),
                                  child: ListView(
                                    shrinkWrap: true,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.sp),
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: [
                                      Text(
                                        'Off',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyNinth,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      SizedBox(height: 30.sp),
                                      Text(
                                        'On',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyNinth,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              ////toggle top container
                              Positioned(
                                top: 5,
                                left: 5,
                                right: 5,
                                child: Container(
                                  height: 33.sp,
                                  width: 46.sp,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(10.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //trailing icon
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 71.sp,
                          color: AppColors.white,
                          alignment: Alignment.centerRight,
                          child: PopupMenuButton(
                            padding: EdgeInsets.zero,
                            position: PopupMenuPosition.under,
                            color: AppColors.white,
                            elevation: 0,
                            offset: Offset(-25.sp, -140.sp),
                            constraints: BoxConstraints(
                              minWidth: 100.sp,
                              maxWidth: 100.sp,
                            ),
                            enabled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.sp),
                              side: BorderSide(
                                width: 1.sp,
                                color: AppColors.greyThree,
                                style: BorderStyle.solid,
                              ),
                            ),
                            onSelected: (value) {
                              // if (value == MenuItem.myFavourite) {
                              //   context.read<DropDownButtonCubit>().category('My Favorites');
                              // } else if (value == MenuItem.devices) {
                              //   context.read<DropDownButtonCubit>().category('Devices');
                              // } else if (value == MenuItem.places) {
                              //   context.read<DropDownButtonCubit>().category('Places');
                              // } else if (value == MenuItem.devicesGroups) {
                              //   context.read<DropDownButtonCubit>().category('Device Groups');
                              // }
                            },
                            icon: Icon(
                              Icons.more_vert_rounded,
                              color: AppColors.greyEight,
                              size: 30.sp,
                            ),
                            itemBuilder: (context) => [
                              //favorite
                              PopupMenuItem(
                                value: MenuItem.favourite,
                                padding: EdgeInsets.only(left: 5.sp),
                                height: 30.sp,
                                textStyle: GoogleFonts.roboto(
                                  color: AppColors.greyNinth,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Icon(
                                        Icons.star,
                                        color: AppColors.yellowOne,
                                        size: 18.sp, //actual 12.sp
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 2.sp),
                                        child: const Text(
                                          'Favourite',
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //edit
                              PopupMenuItem(
                                value: MenuItem.edit,
                                padding: EdgeInsets.only(left: 5.sp),
                                height: 30.sp,
                                textStyle: GoogleFonts.roboto(
                                  color: AppColors.greyNinth,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Icon(
                                        Icons.edit,
                                        color: AppColors.greenTwo,
                                        size: 18.sp, //actual 12.sp
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 2.sp),
                                        child: const Text(
                                          'Edit',
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //delete
                              PopupMenuItem(
                                value: MenuItem.delete,
                                padding: EdgeInsets.only(left: 5.sp),
                                height: 30.sp,
                                textStyle: GoogleFonts.roboto(
                                  color: AppColors.greyNinth,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Icon(
                                        Icons.delete_outlined,
                                        color: AppColors.redTwo,
                                        size: 18.sp, //actual 12.sp
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 2.sp),
                                        child: const Text(
                                          'Delete',
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // child: InkWell(
                          //   highlightColor: Colors.transparent,
                          //   splashColor: Colors.transparent,
                          //   onTap: () {
                          //     debugPrint('show dialog');
                          //   },
                          //   child: Icon(
                          //     Icons.more_vert,
                          //     size: 30.sp,
                          //     color: AppColors.greyEight,
                          //   ),
                          // ),
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
