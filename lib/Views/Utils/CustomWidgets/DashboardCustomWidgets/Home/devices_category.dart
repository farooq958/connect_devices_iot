import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/home_view_device_page_view_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/all_devices_controller.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/button_enable_disable_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/devices_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/edit_device_controller.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/edit_device_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/set_device_favourite_controller.dart';
import 'package:veevo_connect/Controllers/Cubits/set_device_favourite_cubit.dart';
import 'package:veevo_connect/Controllers/Model/AllDevices/get_all_user_devices.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';
import 'package:veevo_connect/Views/Utils/Data/utils.dart';

class DevicesCategory extends StatefulWidget {
  final String categoryState;

  const DevicesCategory({super.key, required this.categoryState});

  @override
  State<DevicesCategory> createState() => _DevicesCategoryState();
}

enum MenuItem {
  Favourite,
  edit,
  delete,
}

class _DevicesCategoryState extends State<DevicesCategory> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewDevicePageViewCubit, int?>(

      builder: (context, viewDeviceTopButtonState) {
        return BlocListener<EditDeviceCubit, EditDeviceState>(
  listener: (context, editState) {
    if(editState is EditDeviceSuccess)
      {
        Utils.showSnackBar(context: context, message: editDeviceController.message, status: "Success");
        context.read<AllDevicesCubit>().loadUserDevices("");
      }
    // TODO: implement listener
  },
  child: Container(
          height: 1.sh,
          width: 1.sw,
          color: AppColors.white,
          alignment: Alignment.topCenter,
          child: BlocConsumer<SetDeviceFavouriteCubit, SetDeviceFavouriteState>(
  listener: (context, favouriteState) {

    if(favouriteState is SetDeviceFavouriteSuccess)
    {
      Utils.showSnackBar(context: context, message:setFavouriteDeviceController.message, status:setFavouriteDeviceController.status );

    }

    if(favouriteState is SetDeviceFavouriteInternetError)
    {
      Utils.showSnackBar(context: context, message:"No Internet Please connect to Internet", status: "Error" );

    }
    if(favouriteState is SetDeviceFavouriteUnknownError)
    {
      Utils.showSnackBar(context: context, message:"Unknown Error", status: "Error" );

    }

    // TODO: implement listener
  },
  builder: (context, state) {
    return BlocConsumer<AllDevicesCubit, AllDevicesState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, allDevicesState) {
    if(allDevicesState is AllDevicesLoaded)
      {



     return    ListView(
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
              onChanged: (value)
              {

                // if(allUserDevices.status=="error")
                //   {
                //     context.read<AllDevicesCubit>().loadUserDevices("");
                //   }
                context.read<AllDevicesCubit>().loadUserDevices(value);


              },
              controller: AppControllers.homeTabDevicesSearchController,
              cursorColor: AppColors.themeColorOne,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
                color: AppColors.greyOne,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Search Device',
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

          //list of devices
          Container(
            height: 500.sp,
            width: 1.sw,
            color: AppColors.white,
            child:

            allUserDevices.status=="error"?
            const Center(child: Text("No Device Found ")):
            allUserDevices.userDevices.isEmpty? const Text("No Devices Available") :
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: 100.sp),
              physics: const BouncingScrollPhysics(),
              itemCount: allUserDevices.userDevices.length,
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
                                        allUserDevices.userDevices[index].name,
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
                                    color: AppColors.greyTenth,
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
                                bottom: 5,
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
//menu Item Favourite click event
                              if (value == MenuItem.Favourite) {
                                print("favourite selct+${allUserDevices.userDevices[index].id}");
context.read<SetDeviceFavouriteCubit>().setDeviceFavouriteAdd(allUserDevices.userDevices[index].id);
                              }
                              if(value == MenuItem.edit)
                                {
                                  //AppControllers.editDeviceIdController.text=allUserDevices.userDevices[index].id;
                                  AppControllers.editDeviceNameController.text=allUserDevices.userDevices[index].name;
                                  AppControllers.editDevicePlaceIdController.text=allUserDevices.userDevices[index].placeId;
                                  AppControllers.editDeviceLatController.text=allUserDevices.userDevices[index].latitude.numberDecimal;
                                  AppControllers.editDeviceLongController.text=allUserDevices.userDevices[index].longitude.numberDecimal;
                                  ///alert dialog edit device
                         AlertDialog al=     AlertDialog(
                           backgroundColor: AppColors.bottomNavBackground,
                           title: Container(
                             height: 52.sp,
                             width: 200.sp,
                             color: AppColors.greySeven,
                             alignment: Alignment.center,
                             child: FittedBox(
                               child: Text(
                                 'Edit Device',
                                 style: GoogleFonts.poppins(
                                   fontWeight: FontWeight.w600,
                                   fontSize: 18.sp,
                                   color: AppColors.greyTwo,
                                 ),
                               ),
                             ),
                           ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    content: Container(
                                      width: 300.sp,
                                      height: 1.sh/3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.0),
                                        //color: Colors.white,
                                      ),
                                      child: ListView(
physics: const BouncingScrollPhysics(),
                                        children: [
                                          // Add your content here
                                          //device id
                                          //   Align(
                                          //       alignment: Alignment.topLeft,
                                          //       child: Text("Device Id",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,
                                          //         fontSize: 14.sp,
                                          //         color: AppColors.greyTwo,),)),
                                          // SizedBox(height: 5.sp,),
                                          // Container(
                                          //   height: 50.sp,
                                          //   width: 300.sp,
                                          //   margin: EdgeInsets.symmetric(horizontal: 30.sp),
                                          //   color: Colors.transparent,
                                          //   child: TextFormField(
                                          //
                                          //     validator: (value){
                                          //       return null;
                                          //
                                          //
                                          //
                                          //     },
                                          //     controller: AppControllers.editDeviceIdController,
                                          //     style: GoogleFonts.poppins(
                                          //       fontSize: 12.0.sp,
                                          //       fontWeight: FontWeight.normal,
                                          //       color: AppColors.themeColorOne,
                                          //     ),
                                          //     cursorColor: AppColors.themeColorOne,
                                          //     decoration: InputDecoration(
                                          //       contentPadding: EdgeInsets.only(
                                          //         top: 5.sp,
                                          //         left: 10.sp,
                                          //       ),
                                          //       focusedBorder: OutlineInputBorder(
                                          //         borderSide:
                                          //         BorderSide(color: AppColors.themeColorOne, width: 1.sp),
                                          //       ),
                                          //       enabledBorder: OutlineInputBorder(
                                          //         borderSide:
                                          //         BorderSide(color: AppColors.lightTheme, width: 1.1.sp),
                                          //       ),
                                          //       hintText: 'Device id',
                                          //       hintStyle: GoogleFonts.poppins(
                                          //         fontSize: 12.0.sp,
                                          //         fontStyle: FontStyle.normal,
                                          //         color: AppColors.greyOne,
                                          //       ),
                                          //     ),
                                          //   ),
                                          // ),
                                          // SizedBox(height: 10.sp,),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text("Device Place Id",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,
                                                fontSize: 14.sp,
                                                color: AppColors.greyTwo,),)),
                                          SizedBox(height: 5.sp,),
                                          Container(
                                            height: 50.sp,
                                            width: 300.sp,
                                            margin: EdgeInsets.symmetric(horizontal: 30.sp),
                                            color: Colors.transparent,
                                            child: TextFormField(
            onChanged: (value){
//print(value.isEmpty);
              if(value.isEmpty)
                {
                  print("heree");
                  context.read<ButtonEnableDisableCubit>().buttonVisibility(false);
                }
              {
                context.read<ButtonEnableDisableCubit>().buttonVisibility(true);
              }

            },
                                              validator: (value){
                                                return null;



                                              },
                                              controller: AppControllers.editDevicePlaceIdController,
                                              style: GoogleFonts.poppins(
                                                fontSize: 12.0.sp,
                                                fontWeight: FontWeight.normal,
                                                color: AppColors.themeColorOne,
                                              ),
                                              cursorColor: AppColors.themeColorOne,
                                              decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(
                                                  top: 5.sp,
                                                  left: 10.sp,
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide:
                                                  BorderSide(color: AppColors.themeColorOne, width: 1.sp),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide:
                                                  BorderSide(color: AppColors.lightTheme, width: 1.1.sp),
                                                ),
                                                hintText: 'Place id',
                                                hintStyle: GoogleFonts.poppins(
                                                  fontSize: 12.0.sp,
                                                  fontStyle: FontStyle.normal,
                                                  color: AppColors.greyOne,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10.sp,),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text("Device Name",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,
                                                fontSize: 14.sp,
                                                color: AppColors.greyTwo,),)),
                                          SizedBox(height: 5.sp,),
                                          //edit device Name
                                          Container(
                                            height: 50.sp,
                                            width: 300.sp,
                                            margin: EdgeInsets.symmetric(horizontal: 30.sp),
                                            color: Colors.transparent,
                                            child: TextFormField(

                                              validator: (value){
                                                return null;



                                              },
                                              controller: AppControllers.editDeviceNameController,
                                              style: GoogleFonts.poppins(
                                                fontSize: 12.0.sp,
                                                fontWeight: FontWeight.normal,
                                                color: AppColors.themeColorOne,
                                              ),
                                              cursorColor: AppColors.themeColorOne,
                                              decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(
                                                  top: 5.sp,
                                                  left: 10.sp,
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide:
                                                  BorderSide(color: AppColors.themeColorOne, width: 1.sp),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide:
                                                  BorderSide(color: AppColors.lightTheme, width: 1.1.sp),
                                                ),
                                                hintText: 'Device name',
                                                hintStyle: GoogleFonts.poppins(
                                                  fontSize: 12.0.sp,
                                                  fontStyle: FontStyle.normal,
                                                  color: AppColors.greyOne,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10.sp,),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text("Long & Latt",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,
                                                fontSize: 14.sp,
                                                color: AppColors.greyTwo,),)),
                                          SizedBox(height: 5.sp,),
                                          Container(
                                            height: 50.sp,
                                            width: 300.sp,
                                            margin: EdgeInsets.symmetric(horizontal: 20.sp),
                                            padding: EdgeInsets.symmetric(horizontal: 10.sp),
                                            child: Row(
                                              children: [
                                                //text
                                                Expanded(
                                                  flex: 10,
                                                  child: TextFormField(
                                                    keyboardType: const TextInputType.numberWithOptions(decimal: true),

                                                    controller: AppControllers.editDeviceLongController,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 12.0.sp,
                                                      fontWeight: FontWeight.normal,
                                                      color: AppColors.themeColorOne,
                                                    ),
                                                    cursorColor: AppColors.themeColorOne,
                                                    decoration: InputDecoration(
                                                      contentPadding: EdgeInsets.only(
                                                        top: 5.sp,
                                                        left: 10.sp,
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: AppColors.themeColorOne, width: 1.sp),
                                                      ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: AppColors.lightTheme, width: 1.1.sp),
                                                      ),
                                                      hintText: 'Longitude',
                                                      hintStyle: GoogleFonts.poppins(
                                                        fontSize: 12.0.sp,
                                                        fontStyle: FontStyle.normal,
                                                        color: AppColors.greyOne,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const Spacer(flex: 1),
                                                Expanded(
                                                  flex: 10,
                                                  child: TextFormField(
                                                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                                    controller: AppControllers.editDeviceLatController,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 12.0.sp,
                                                      fontWeight: FontWeight.normal,
                                                      color: AppColors.themeColorOne,
                                                    ),
                                                    cursorColor: AppColors.themeColorOne,
                                                    decoration: InputDecoration(
                                                      contentPadding: EdgeInsets.only(
                                                        top: 5.sp,
                                                        left: 10.sp,
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: AppColors.themeColorOne, width: 1.sp),
                                                      ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: AppColors.lightTheme, width: 1.1.sp),
                                                      ),
                                                      hintText: 'Latitude',
                                                      hintStyle: GoogleFonts.poppins(
                                                        fontSize: 12.0.sp,
                                                        fontStyle: FontStyle.normal,
                                                        color: AppColors.greyOne,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                           actions: [
                             BlocBuilder<ButtonEnableDisableCubit, bool>(
  builder: (context, buttonState) {
   // print(buttonState);
    return MaterialButton(

                               color:buttonState==false? AppColors.greyThree:AppColors.themeColorTwo, onPressed: (){
///EDIT LOGIC
      ///
      if(buttonState != false) {
        context.read<EditDeviceCubit>().editDeviceFunc(
            allUserDevices.userDevices[index].id,
            AppControllers.editDevicePlaceIdController.text,
            AppControllers.editDeviceNameController.text,
            AppControllers.editDeviceLongController.text,
            AppControllers.editDeviceLatController.text);
        Navigator.pop(context);
      }

                             },child: SizedBox(width: 100.sp,height: 30.sp,child: const Center(child: Text("Submit"),),),);
  },
)


                           ],
                                  );
                         context.read<ButtonEnableDisableCubit>().buttonVisibility(false);
showDialog(context: context, builder: (BuildContext context){


  return al;
});

                                }
                              // else if (value == MenuItem.devices) {
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
                                value: MenuItem.Favourite,
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
                                        // Icons.star_border_purple500_outlined,
                                        color: AppColors.yellowOne,
                                        size: 18.sp, //actual 12.sp
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 2.sp),
                                        child: const Text(
                                          'favorite',
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
      );

      }
    else if (allDevicesState is AllDevicesInternetError)
    {
      return const Text("No Internet ,Please Check Your Internet ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),);

    }
    else if (allDevicesState is AllDevicesUnknownError)
    {
      return const Text("Unknown Error , Connection is down or refused to connect ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),);

    }
    else
    {
      return const CircularProgressIndicator();

    }

  },
);
  },
),
        ),
);
      }
    );
  }
}
