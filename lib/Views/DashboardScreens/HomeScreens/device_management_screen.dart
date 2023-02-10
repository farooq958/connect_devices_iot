import 'package:dynamic_fa_icons/dynamic_fa_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/DeviceDetailsCubit/deviceDetailController.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/DeviceDetailsCubit/device_details_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/DeviceDetailsCubit/drop_down_up_down_cubit.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/CustomDropdownDeviceManagment%20/custom_drop_down.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

import '../../../Controllers/Cubits/DevicesCubit/DeviceDetailsCubit/dimmer_show_cubit.dart';
import '../../../Controllers/Cubits/DevicesCubit/DeviceDetailsCubit/drop_down_up_down_numbers_cubit.dart';
import 'CustomDropdownDeviceManagment /custom_drop_down_numbers.dart';

class DeviceManagementScreen extends StatefulWidget {
  const DeviceManagementScreen({Key? key}) : super(key: key);

  @override
  State<DeviceManagementScreen> createState() => _DeviceManagementScreenState();
}

class _DeviceManagementScreenState extends State<DeviceManagementScreen> {
  var slideVal=0.0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeviceDetailsCubit, DeviceDetailsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, deviceDetailBuilder) {
        if(deviceDetailBuilder is DeviceDetailsLoaded) {
          return BlocConsumer<DimmerShowCubit, bool>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, dimmerState) {
    return BlocConsumer<DropDownUpDownCubit, String>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context,  categoryDropdown) {
    return BlocConsumer<DropDownUpDownNumbersCubit, int>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, dropDownNumbers) {
    return Container(
          height: 100.sp,
          width: 1.sw,
          color: AppColors.white,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              //sensors text
              Container(
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
                          Icons.wifi_tethering_rounded,
                          size: 25.sp,
                          color: AppColors.themeColorOne,
                        ),
                      ),
                    ),

                    //sensors text
                    Expanded(
                      flex: 10,
                      child: Container(
                        height: 71.sp,
                        color: AppColors.white,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 5.sp),
                        child: Text(
                          'Sensors',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            color: AppColors.greyThirteen,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //device details 04 icons with texts
              Container(
                height: 130.sp,
                width: 1.sw,
                color: AppColors.white,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.symmetric(horizontal: 22.sp),
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.sp),
                      height: 130.sp,
                      width: 120.sp,
                      child: GridView.builder(
itemCount: sensorList.length,
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 7 / 3,
                      crossAxisSpacing: 70,
                      mainAxisSpacing: 5) , itemBuilder: (context ,index){
                        return Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 50.sp,
                                alignment: Alignment.center,
                                // padding: EdgeInsets.only(bottom: 30.sp),
                                decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(10.sp),
                                    border: Border.all(
                                      color: AppColors.yellowOne,
                                      width: 1.sp,
                                    )),
                                child: FaIcon(
                                 sensorList[index].name=="Current"? DynamicFaIcons.getIconFromName("bolt-lightning"):
                                 sensorList[index].name=="Humidity"?faIconNameMapping["droplet"]:faIconNameMapping["temperatureThreeQuarters"],
                                  color: AppColors.yellowOne,
                                  size: 30.sp,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                height: 50.sp,
                                color: AppColors.white,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 10.sp),
                                child: ListView(
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  physics: const NeverScrollableScrollPhysics(),
                                  children: [
                                    FittedBox(
                                      child: Text(
                                        sensorList[index].name,
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyTwo,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '227',
                                      style: GoogleFonts.poppins(
                                        color: AppColors.greyNinth,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),


                          ],
                        );



                      }),
                    ),
                    //first row
                    // Container(
                    //   height: 50.sp,
                    //   width: 1.sw,
                    //   color: AppColors.white,
                    //   padding: EdgeInsets.symmetric(horizontal: 30.sp),
                    //   child: Row(
                    //     children: [
                    //       Expanded(
                    //         flex: 2,
                    //         child: Container(
                    //           height: 50.sp,
                    //           alignment: Alignment.center,
                    //           // padding: EdgeInsets.only(bottom: 30.sp),
                    //           decoration: BoxDecoration(
                    //               color: AppColors.white,
                    //               borderRadius: BorderRadius.circular(10.sp),
                    //               border: Border.all(
                    //                 color: AppColors.yellowOne,
                    //                 width: 1.sp,
                    //               )),
                    //           child: Icon(
                    //             Icons.energy_savings_leaf_rounded,
                    //             color: AppColors.yellowOne,
                    //             size: 30.sp,
                    //           ),
                    //         ),
                    //       ),
                    //       Expanded(
                    //         flex: 4,
                    //         child: Container(
                    //           height: 50.sp,
                    //           color: AppColors.white,
                    //           alignment: Alignment.centerLeft,
                    //           padding: EdgeInsets.only(left: 10.sp),
                    //           child: ListView(
                    //             shrinkWrap: true,
                    //             padding: EdgeInsets.zero,
                    //             physics: const NeverScrollableScrollPhysics(),
                    //             children: [
                    //               Text(
                    //                 'Voltage',
                    //                 style: GoogleFonts.poppins(
                    //                   color: AppColors.greyTwo,
                    //                   fontWeight: FontWeight.w600,
                    //                   fontSize: 18.sp,
                    //                 ),
                    //               ),
                    //               Text(
                    //                 '227',
                    //                 style: GoogleFonts.poppins(
                    //                   color: AppColors.greyNinth,
                    //                   fontWeight: FontWeight.normal,
                    //                   fontSize: 14.sp,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //       const Spacer(flex: 2),
                    //       Expanded(
                    //         flex: 2,
                    //         child: Container(
                    //           height: 50.sp,
                    //           alignment: Alignment.center,
                    //           // padding: EdgeInsets.only(bottom: 30.sp),
                    //           decoration: BoxDecoration(
                    //               color: AppColors.white,
                    //               borderRadius: BorderRadius.circular(10.sp),
                    //               border: Border.all(
                    //                 color: AppColors.orangeOne,
                    //                 width: 1.sp,
                    //               )),
                    //           child: Icon(
                    //             Icons.flash_on,
                    //             color: AppColors.orangeOne,
                    //             size: 30.sp,
                    //           ),
                    //         ),
                    //       ),
                    //       Expanded(
                    //         flex: 4,
                    //         child: Container(
                    //           height: 50.sp,
                    //           color: AppColors.white,
                    //           alignment: Alignment.centerLeft,
                    //           padding: EdgeInsets.only(left: 10.sp),
                    //           child: ListView(
                    //             shrinkWrap: true,
                    //             padding: EdgeInsets.zero,
                    //             physics: const NeverScrollableScrollPhysics(),
                    //             children: [
                    //               Text(
                    //                 'Current',
                    //                 style: GoogleFonts.poppins(
                    //                   color: AppColors.greyTwo,
                    //                   fontWeight: FontWeight.w600,
                    //                   fontSize: 18.sp,
                    //                 ),
                    //               ),
                    //               Text(
                    //                 '22',
                    //                 style: GoogleFonts.poppins(
                    //                   color: AppColors.greyNinth,
                    //                   fontWeight: FontWeight.normal,
                    //                   fontSize: 14.sp,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    //
                    // SizedBox(height: 10.sp),
                    //
                    // //second row
                    // Container(
                    //   height: 50.sp,
                    //   width: 1.sw,
                    //   color: AppColors.white,
                    //   padding: EdgeInsets.symmetric(horizontal: 30.sp),
                    //   child: Row(
                    //     children: [
                    //       Expanded(
                    //         flex: 2,
                    //         child: Container(
                    //           height: 50.sp,
                    //           alignment: Alignment.center,
                    //           // padding: EdgeInsets.only(bottom: 30.sp),
                    //           decoration: BoxDecoration(
                    //               color: AppColors.white,
                    //               borderRadius: BorderRadius.circular(10.sp),
                    //               border: Border.all(
                    //                 color: AppColors.redTwo,
                    //                 width: 1.sp,
                    //               )),
                    //           child: Icon(
                    //             Icons.device_thermostat,
                    //             color: AppColors.redTwo,
                    //             size: 30.sp,
                    //           ),
                    //         ),
                    //       ),
                    //       Expanded(
                    //         flex: 4,
                    //         child: Container(
                    //           height: 70.sp,
                    //           color: AppColors.white,
                    //           alignment: Alignment.centerLeft,
                    //           padding: EdgeInsets.only(left: 10.sp),
                    //           child: ListView(
                    //             shrinkWrap: true,
                    //             padding: EdgeInsets.zero,
                    //             physics: const NeverScrollableScrollPhysics(),
                    //             children: [
                    //               Text(
                    //                 'Temp',
                    //                 style: GoogleFonts.poppins(
                    //                   color: AppColors.greyTwo,
                    //                   fontWeight: FontWeight.w600,
                    //                   fontSize: 18.sp,
                    //                 ),
                    //               ),
                    //               Text(
                    //                 '227',
                    //                 style: GoogleFonts.poppins(
                    //                   color: AppColors.greyNinth,
                    //                   fontWeight: FontWeight.normal,
                    //                   fontSize: 14.sp,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //       const Spacer(flex: 2),
                    //       Expanded(
                    //         flex: 2,
                    //         child: Container(
                    //           height: 50.sp,
                    //           alignment: Alignment.center,
                    //           // padding: EdgeInsets.only(bottom: 30.sp),
                    //           decoration: BoxDecoration(
                    //               color: AppColors.white,
                    //               borderRadius: BorderRadius.circular(10.sp),
                    //               border: Border.all(
                    //                 color: AppColors.blueTwo,
                    //                 width: 1.sp,
                    //               )),
                    //           child: Icon(
                    //             Icons.water_drop,
                    //             color: AppColors.blueTwo,
                    //             size: 30.sp,
                    //           ),
                    //         ),
                    //       ),
                    //       Expanded(
                    //         flex: 4,
                    //         child: Container(
                    //           height: 70.sp,
                    //           color: AppColors.white,
                    //           alignment: Alignment.centerLeft,
                    //           padding: EdgeInsets.only(left: 10.sp),
                    //           child: ListView(
                    //             shrinkWrap: true,
                    //             padding: EdgeInsets.zero,
                    //             physics: const NeverScrollableScrollPhysics(),
                    //             children: [
                    //               FittedBox(
                    //                 child: Text(
                    //                   'Humidity',
                    //                   style: GoogleFonts.poppins(
                    //                     color: AppColors.greyTwo,
                    //                     fontWeight: FontWeight.w600,
                    //                     fontSize: 18.sp,
                    //                   ),
                    //                 ),
                    //               ),
                    //               Text(
                    //                 '227',
                    //                 style: GoogleFonts.poppins(
                    //                   color: AppColors.greyNinth,
                    //                   fontWeight: FontWeight.normal,
                    //                   fontSize: 14.sp,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),

              //divider
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Divider(
                  thickness: 1.sp,
                  color: AppColors.greyThree,
                ),
              ),

              //controls text
              Container(
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
                          Icons.control_camera,
                          size: 25.sp,
                          color: AppColors.themeColorOne,
                        ),
                      ),
                    ),

                    //sensors text
                    Expanded(
                      flex: 10,
                      child: Container(
                        height: 71.sp,
                        color: AppColors.white,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 5.sp),
                        child: Text(
                          'Controls',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            color: AppColors.greyThirteen,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //first device objects
              Container(
                height: 1.sh/2,
                width: 1.sw,
                color: AppColors.white,
                padding: EdgeInsets.only(
                  left: 22.sp,
                  right: 50.sp,
                ),
                child: ListView.separated(
                  itemBuilder: (context,index) {
                    return SizedBox(
                      height: 90.sp,
                      width: 1.sw,
                      child: Row(
                        children: [
                          //leading icon
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: 58.sp,
                              margin: EdgeInsets.symmetric(horizontal: 5.sp),
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(15.sp),
                              ),
                              child: Icon(
                                Icons.developer_board,
                                size: 28.sp,
                                color: AppColors.themeColorOne,
                              ),
                            ),
                          ),

                          //title, subTitle, and wifi icon
                          Expanded(
                            flex: relayDimmerList[index].type=="Dimmer"?3:9,
                            child: Container(
                              height: 71.sp,
                              color: AppColors.white,
                              alignment: Alignment.centerLeft,
                              child: FittedBox(
                                child: Text(
                                  relayDimmerList[index].name,
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

                          //switch button //dimmer buttons
                          Expanded(
                            flex:relayDimmerList[index].type=="Dimmer"? 12: 3,
                            child: relayDimmerList[index].type=="Dimmer"? SizedBox(
                              height: 200.sp,
                              width: 400,
                             // color: AppColors.yellowOne,
                              child: ListView(

                                physics: const NeverScrollableScrollPhysics(),
                                children: [
                                  SizedBox(
                                    //color: AppColors.red,
                                    height: 20.sp,
                                    width: 100.sp,
                                    child:  GestureDetector(
                                      onTap:()
                                      {
                                        //print("alaramtapped");
                                        if(dimmerState == false) {
                                          context.read<DimmerShowCubit>().showHideDimmer(true);
                                        }
                                        else
                                          {
                                            context.read<DimmerShowCubit>().showHideDimmer(false);

                                          }
                                      },
                                      child: Material(
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.alarm,
                                            color: AppColors.themeColorOne,
                                            size: 25.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // SizedBox(height: 1.sp,)
                                  // ,
                                  //slider and two Container
                          dimmerState==true?        SizedBox(
// color: AppColors.green,
                                     height: 100,
                                    width: 100,
                                    child: ListView(

                                      scrollDirection: Axis.horizontal,

                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(bottom: 8.0.sp),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 100.sp,
                                              width: 125.w,
                                              child:    Slider(
                                                  activeColor: AppColors.themeColorOne,
                                                  value: slideVal, onChanged: (va){
                                               setState(() {
                     slideVal=va;
                                               });
                                              }
                                              ,
                                              max: 5,
                                              min: 0,),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 20.sp),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                             height: 35.sp,
                                              width: 50.sp,
                                              decoration: BoxDecoration(
                                                color: AppColors.themeColorOne,
                                                borderRadius: BorderRadius.circular(30)
                                              ),
                                              child: Row(
                                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[

                                                    Expanded(child: CustomDropDownNumbers(categoryState: categoryDropdown,toShow: dropDownNumbers,)),
                                                  Expanded(

                                                    child: ListView(
                             children:  [
                               InkWell(
                                 onTap:(){
                                   if(dropDownNumbers != 1) {
                                     context.read<DropDownUpDownNumbersCubit>().categoryNumbers(dropDownNumbers-1, context, categoryDropdown);
                                   }

                                 },
                                   child: Align(alignment: Alignment.bottomCenter, child: Icon(Icons.arrow_drop_up ,size: 20.sp,color: AppColors.white,))),
                               //SizedBox(height: 1.sp,),
                               InkWell(
                                   onTap: (){
               var toCheck= categoryDropdown=="hr"?24:60;
                                     if(dropDownNumbers < toCheck) {
                                       context.read<DropDownUpDownNumbersCubit>().categoryNumbers(dropDownNumbers+1, context, categoryDropdown);
                                     }

                                   },
                                   child: Icon(Icons.arrow_drop_down,size: 20.sp,color: AppColors.white,)),

                             ],

                                                    ),
                                                  )


                                                ],
                                              ),


                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 2.sp,),
                                         Padding(
                                           padding: EdgeInsets.only(bottom: 20.sp),
                                           child: Align(
                                             alignment: Alignment.centerLeft,
                                             child: Container(

                                               height: 30.sp,
                                               width: 50.sp,
                                              decoration: BoxDecoration(
                                                  color: AppColors.themeColorOne,
                                                  borderRadius: BorderRadius.circular(30)
                                              ),
                                               child: Row(
                                                 //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 children: <Widget>[

                                                    Expanded(child: CustomDropDownHrMin(categoryState: categoryDropdown)
                                                   // Align(alignment: Alignment.center,
                                                   //     child: Text("hr",style: TextStyle(color: AppColors.white),))
                                               ),
                                                   Expanded(

                                                     child: ListView(
                                                       shrinkWrap: true,
                                                       children:  [
                                                         InkWell(onTap:(){
                                                        print("hr up tap$categoryDropdown");

                                                        context.read<DropDownUpDownCubit>().categoryHrMin(categoryDropdown=="hr"?"hr":"hr", context);

                                                   },
                                                             child: Align(alignment: Alignment.bottomCenter, child: Icon(Icons.arrow_drop_up ,size: 18.sp,color: AppColors.white,))),
                                                         //SizedBox(height: 1.sp,),
                                                         InkWell(
                                                             onTap:(){
                                                               print("hr down tap");
                                                               context.read<DropDownUpDownCubit>().categoryHrMin(categoryDropdown=="min"?"min":"min", context);
                                                             },

                                                             child: Material(
                                                               color: Colors.transparent,
                                                                 child: Icon(Icons.arrow_drop_down,size: 18.sp,color: AppColors.white,))),

                                                       ],

                                                     ),
                                                   )


                                                 ],
                                               ),

                                        ),
                                           ),
                                         ),

                                      ],
                                    ),
                                  ): const SizedBox(),
                                ],
                              ),
                            ):

                            //switch
                            Container(
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
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.sp),
                                        physics: const NeverScrollableScrollPhysics(),
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
                        ],
                      ),
                    );
                  }, separatorBuilder: (BuildContext context, int index) { return    Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: Divider(
                    thickness: 1.sp,
                    color: AppColors.greyThree,
                  ),
                );}, itemCount: relayDimmerList.length,
                ),
              ),
              //SizedBox(height: 10.sp),

              //divider


              //second device objects
              // Container(
              //   height: 90.sp,
              //   width: 1.sw,
              //   color: AppColors.white,
              //   padding: EdgeInsets.only(
              //     left: 22.sp,
              //     right: 50.sp,
              //   ),
              //   child: Row(
              //     children: [
              //       //leading icon
              //       Expanded(
              //         flex: 3,
              //         child: Container(
              //           height: 58.sp,
              //           margin: EdgeInsets.symmetric(horizontal: 5.sp),
              //           decoration: BoxDecoration(
              //             color: AppColors.white,
              //             borderRadius: BorderRadius.circular(15.sp),
              //           ),
              //           child: Icon(
              //             Icons.developer_board,
              //             size: 28.sp,
              //             color: AppColors.themeColorOne,
              //           ),
              //         ),
              //       ),
              //
              //       //title, subTitle, and wifi icon
              //       Expanded(
              //         flex: 9,
              //         child: Container(
              //           height: 71.sp,
              //           color: AppColors.white,
              //           alignment: Alignment.centerLeft,
              //           child: Text(
              //             'Device Object',
              //             textAlign: TextAlign.left,
              //             style: GoogleFonts.poppins(
              //               color: AppColors.greyTwo,
              //               fontWeight: FontWeight.w600,
              //               fontSize: 16.sp,
              //             ),
              //           ),
              //         ),
              //       ),
              //
              //       //switch button
              //       Expanded(
              //         flex: 3,
              //         child: Container(
              //           height: 90.sp,
              //           decoration: BoxDecoration(
              //             color: AppColors.creamy,
              //             borderRadius: BorderRadius.circular(10.sp),
              //           ),
              //           child: Stack(
              //             children: [
              //               //on off texts
              //               Positioned(
              //                 top: 0,
              //                 //replace it with bottom for off
              //                 left: 0,
              //                 right: 0,
              //                 bottom: 0,
              //                 child: Container(
              //                   height: 71.sp,
              //                   width: 46.sp,
              //                   decoration: BoxDecoration(
              //                     color: AppColors
              //                         .greyTenth, //replace with .cremy for on
              //                     borderRadius: BorderRadius.circular(10.sp),
              //                   ),
              //                   child: ListView(
              //                     shrinkWrap: true,
              //                     padding: EdgeInsets.symmetric(
              //                         vertical: 10.sp),
              //                     physics: const NeverScrollableScrollPhysics(),
              //                     children: [
              //                       Text(
              //                         'Off',
              //                         textAlign: TextAlign.center,
              //                         style: GoogleFonts.poppins(
              //                           color: AppColors.greyNinth,
              //                           fontSize: 12.sp,
              //                           fontWeight: FontWeight.normal,
              //                         ),
              //                       ),
              //                       SizedBox(height: 30.sp),
              //                       Text(
              //                         'On',
              //                         textAlign: TextAlign.center,
              //                         style: GoogleFonts.poppins(
              //                           color: AppColors.greyNinth,
              //                           fontSize: 12.sp,
              //                           fontWeight: FontWeight.normal,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //
              //               ////toggle top container
              //               Positioned(
              //                 bottom: 5.sp, //replace it with top for on
              //                 left: 5.sp,
              //                 right: 5.sp,
              //                 child: Container(
              //                   height: 33.sp,
              //                   width: 46.sp,
              //                   decoration: BoxDecoration(
              //                     color: AppColors.white,
              //                     borderRadius: BorderRadius.circular(10.sp),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 10.sp),

              //divider
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20.sp),
              //   child: Divider(
              //     thickness: 1.sp,
              //     color: AppColors.greyThree,
              //   ),
              // ),

              //third device objects
              // Container(
              //   height: 50.sp,
              //   width: 1.sw,
              //   color: AppColors.white,
              //   padding: EdgeInsets.only(
              //     left: 22.sp,
              //     right: 50.sp,
              //   ),
              //   child: Row(
              //     children: [
              //       //leading icon
              //       Expanded(
              //         flex: 3,
              //         child: Container(
              //           height: 58.sp,
              //           margin: EdgeInsets.symmetric(horizontal: 5.sp),
              //           decoration: BoxDecoration(
              //             color: AppColors.white,
              //             borderRadius: BorderRadius.circular(15.sp),
              //           ),
              //           child: Icon(
              //             Icons.developer_board,
              //             size: 28.sp,
              //             color: AppColors.themeColorOne,
              //           ),
              //         ),
              //       ),
              //
              //       //title, subTitle, and wifi icon
              //       Expanded(
              //         flex: 9,
              //         child: Container(
              //           height: 50.sp,
              //           color: AppColors.white,
              //           alignment: Alignment.centerLeft,
              //           child: Text(
              //             'Device Object',
              //             textAlign: TextAlign.left,
              //             style: GoogleFonts.poppins(
              //               color: AppColors.greyTwo,
              //               fontWeight: FontWeight.w600,
              //               fontSize: 16.sp,
              //             ),
              //           ),
              //         ),
              //       ),
              //
              //       //switch button
              //       Expanded(
              //         flex: 3,
              //         child: Container(
              //           height: 50.sp,
              //           color: AppColors.white,
              //           child: Icon(
              //             Icons.alarm,
              //             color: AppColors.themeColorOne,
              //             size: 25.sp,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 10.sp),
              //
              // //divider
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20.sp),
              //   child: Divider(
              //     thickness: 1.sp,
              //     color: AppColors.greyThree,
              //   ),
              // ),

              //fourth device objects
              // Container(
              //   height: 50.sp,
              //   width: 1.sw,
              //   color: AppColors.white,
              //   padding: EdgeInsets.only(
              //     left: 22.sp,
              //     right: 50.sp,
              //   ),
              //   child: Row(
              //     children: [
              //       //leading icon
              //       Expanded(
              //         flex: 3,
              //         child: Container(
              //           height: 58.sp,
              //           margin: EdgeInsets.symmetric(horizontal: 5.sp),
              //           decoration: BoxDecoration(
              //             color: AppColors.white,
              //             borderRadius: BorderRadius.circular(15.sp),
              //           ),
              //           child: Icon(
              //             Icons.developer_board,
              //             size: 28.sp,
              //             color: AppColors.themeColorOne,
              //           ),
              //         ),
              //       ),
              //
              //       //title, subTitle, and wifi icon
              //       Expanded(
              //         flex: 9,
              //         child: Container(
              //           height: 50.sp,
              //           color: AppColors.white,
              //           alignment: Alignment.centerLeft,
              //           child: Text(
              //             'Device Object',
              //             textAlign: TextAlign.left,
              //             style: GoogleFonts.poppins(
              //               color: AppColors.greyTwo,
              //               fontWeight: FontWeight.w600,
              //               fontSize: 16.sp,
              //             ),
              //           ),
              //         ),
              //       ),
              //
              //       //switch button
              //       Expanded(
              //         flex: 3,
              //         child: Container(
              //           height: 50.sp,
              //           color: AppColors.white,
              //           child: Icon(
              //             Icons.alarm,
              //             color: AppColors.themeColorOne,
              //             size: 25.sp,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 10.sp),
              //
              // //divider
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20.sp),
              //   child: Divider(
              //     thickness: 1.sp,
              //     color: AppColors.greyThree,
              //   ),
              // ),
            ],
          ),
        );
  },
);
  },
);
  },
);
        }
        else
          {
            return SizedBox();
          }
      },
    );
  }
}


// ///Import Package as
// ///import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ///
// /// Now to use it as
// /// ignore the red lINES
//  Container(
//
// child: FaIcon(
// FontAwesomeIcons.gamepad       ///NAME of Icon
// color: Colors.yellow, ///Colors
// size: : 20,   ///size
// )
//
// )


