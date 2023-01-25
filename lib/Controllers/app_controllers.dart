import 'package:flutter/material.dart';

class AppControllers {
  //login textFields controllers
  static final TextEditingController userNameController =
      TextEditingController();
  static final TextEditingController passwordController =
      TextEditingController();

  //bottom Navigation bar controller
  static PageController bottomNavigationBarController =
      PageController(initialPage: 0);

  //home tab
  //my favorite search text field controller
  static final TextEditingController homeTabMyFavoritesSearchController =
      TextEditingController();
  //devices search text field controller
  static final TextEditingController homeTabDevicesSearchController =
      TextEditingController();
  //places search text field controller
  static final TextEditingController homeTabPlacesSearchController =
      TextEditingController();
  //device groups search text field controller
  static final TextEditingController homeTabDeviceGroupsSearchController =
      TextEditingController();
  //home view device page view controller
  static PageController homeViewDeviceController =
      PageController(initialPage: 0);
  static PageController placesDeviceListPageViewController =
      PageController(initialPage: 0);

  static final TextEditingController addNewDeviceDeviceIdController =
      TextEditingController();
  static final TextEditingController addNewDeviceDeviceNameController =
      TextEditingController();
  static final TextEditingController addNewDeviceDeviceLongController =
      TextEditingController();
  static final TextEditingController addNewDeviceDeviceLatController =
      TextEditingController();
  static final TextEditingController editDeviceLatController =
  TextEditingController();
  static final TextEditingController editDeviceLongController =
  TextEditingController();
  static final TextEditingController editDeviceNameController =
  TextEditingController();
  // static final TextEditingController editDeviceIdController =
  // TextEditingController();
  static final TextEditingController editDevicePlaceIdController =
  TextEditingController();
}
