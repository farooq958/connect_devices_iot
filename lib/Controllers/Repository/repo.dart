
import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:veevo_connect/Controllers/AppUri/app_uri.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/all_devices_controller.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/edit_device_controller.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/registerController.dart';
import 'package:veevo_connect/Controllers/Cubits/FavouriteDeviceCubit/allfavouritedevicescontroller.dart';
import 'package:veevo_connect/Controllers/Cubits/PlacesCubit/allplacescontroller.dart';
import 'package:veevo_connect/Controllers/Cubits/set_device_favourite_controller.dart';
import 'package:veevo_connect/Controllers/Cubits/setfavouritedevice.dart';
import 'package:veevo_connect/Controllers/Model/AllDevices/EditDevice/edit_device_model.dart';
import 'package:veevo_connect/Controllers/Model/AllDevices/get_all_user_devices.dart';
import 'package:veevo_connect/Controllers/Model/AllDevices/register_device.dart';
import 'package:veevo_connect/Controllers/Model/AllPlaces/get_all_places.dart';
import 'package:veevo_connect/Controllers/Model/FavouriteDevices/get_all_favourite_devices.dart';

import '../Cubits/remove_favourite_controller.dart';
import '../Cubits/removefavouritedevice.dart';
class Repository{


Future<int?>  getAllFavouriteDevices(searchQuery)
  async {

    try{
      var request;

      if(searchQuery==""){
        request = http.Request('GET', Uri.parse(allFavouriteDeviceUri));
      }else{
        request=  http.Request('GET', Uri.parse(favouriteSearchUri+searchQuery));

      }


      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
       // print(await response.stream.bytesToString());
        if(searchQuery=="") {
          favouriteDevices  =   favouriteDevicesFromJson(await response.stream.bytesToString());
        }
        else{

          favouriteDevices=favouriteDevicesFromJson(await response.stream.bytesToString());

        }

      }
      else {
        print(response.reasonPhrase);
      }
      return response.statusCode;
    }on SocketException catch (e) {
      debugPrint(e.toString());
      debugPrint('Internet connection is down.');
      return 10;
    } on Exception catch (e) {
      debugPrint('sent data api exception: $e');
      return 0;
    }




  }

Future<int?>  getAllPlaces(searchQuery)
async {

  try{    var request;


if(searchQuery=="")
  {
    request = http.Request('GET', Uri.parse(allPlacesUri));

  }
else{
  request = http.Request('GET', Uri.parse(placesSearchUri+searchQuery));

}

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
      allPlacesController  =   allPlacesModelFromJson(await response.stream.bytesToString());

    }
    else {
      print(response.reasonPhrase);
    }
    return response.statusCode;
  }on SocketException catch (e) {
    debugPrint(e.toString());
    debugPrint('Internet connection is down.');
    return 10;
  } on Exception catch (e) {
    debugPrint('sent data api exception: $e');
    return 0;
  }




}

Future<int?>  getAllDevices(String seacrhQuery)
async {

  try{
    var request;
if(seacrhQuery=="")
  {
    request=http.Request('GET', Uri.parse(allUserDeviceUri));}
else
  {
 request=  http.Request('GET', Uri.parse(devicesSearchUri+seacrhQuery));
  }



    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
      allUserDevices  =   allUserDevicesFromJson(await response.stream.bytesToString());

    }
    else {
      print(response.reasonPhrase);
    }
    return response.statusCode;
  }on SocketException catch (e) {
    debugPrint(e.toString());
    debugPrint('Internet connection is down.');
    return 10;
  } on Exception catch (e) {
    debugPrint('sent data api exception: $e');
    return 0;
  }




}

Future<int?>  registerDevice( {required String deviceName,required String deviceSerial,required String placeId,required double longitude,required double latitude})
async {

  try{

    var headers = {
      'Content-Type': 'application/json'
    };

   var   request=  http.Request('POST', Uri.parse(registerDevices));

   request.body = json.encode({
     "name": deviceName,
     "device_serial": deviceSerial,
     "place_id": placeId,
     "longitude": longitude,
     "latitude": latitude
   });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
      registerDeviceController  =   registerDeviceFromJson(await response.stream.bytesToString());

    }
    else {
      print(response.reasonPhrase);
    }
    return response.statusCode;
  }on SocketException catch (e) {
    debugPrint(e.toString());
    debugPrint('Internet connection is down.');
    return 10;
  } on Exception catch (e) {
    debugPrint('sent data api exception: $e');
    return 0;
  }




}

Future<int?>  setFavouriteDevice( {required String id})
async {

  try{



    var   request=  http.Request('POST', Uri.parse(setFavouriteDeviceUri+id));



    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
      setFavouriteDeviceController  =  setFavouriteDeviceFromJson(await response.stream.bytesToString());

    }
    else {
      print(response.reasonPhrase);
    }
    return response.statusCode;
  }on SocketException catch (e) {
    debugPrint(e.toString());
    debugPrint('Internet connection is down.');
    return 10;
  } on Exception catch (e) {
    debugPrint('sent data api exception: $e');
    return 0;
  }




}
Future<int?>  removeFavouriteDevice( {required String id})
async {

  try{



    var   request=  http.Request('DELETE', Uri.parse(removeFavouriteUri+id));



    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
      removeFavouriteDeviceController  = removeFavouriteDeviceFromJson(await response.stream.bytesToString());

    }
    else {
      print(response.reasonPhrase);
    }
    return response.statusCode;
  }on SocketException catch (e) {
    debugPrint(e.toString());
    debugPrint('Internet connection is down.');
    return 10;
  } on Exception catch (e) {
    debugPrint('sent data api exception: $e');
    return 0;
  }




}

Future<int?>  editDevice( {required String deviceName,required String deviceId,required String placeId,required String longitude,required String latitude})
async {

  try{
print("lat and long  $latitude");
    var headers = {
      'Content-Type': 'application/json'
    };

    var   request=  http.Request('PATCH', Uri.parse(editDeviceUri));

    request.body = json.encode({
      "id": deviceId,
      "place_id": placeId,
      "name": deviceName,
      "longitude": double.parse(longitude),
      "latitude": double.parse(latitude)
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
      editDeviceController  =   editDeviceFromJson(await response.stream.bytesToString());

    }
    else {
      print(response.reasonPhrase);
    }
    return response.statusCode;
  }on SocketException catch (e) {
    debugPrint(e.toString());
    debugPrint('Internet connection is down.');
    return 10;
  } on Exception catch (e) {
    debugPrint('sent data api exception: $e');
    return 0;
  }




}
}