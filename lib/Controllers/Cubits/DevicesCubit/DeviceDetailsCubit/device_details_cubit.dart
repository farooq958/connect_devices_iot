import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/DeviceDetailsCubit/deviceDetailController.dart';
import 'package:veevo_connect/Controllers/Repository/repo.dart';

part 'device_details_state.dart';

class DeviceDetailsCubit extends Cubit<DeviceDetailsState> {
  DeviceDetailsCubit() : super(DeviceDetailsInitial());

  loadDeviceDetail(id)
  async {

    var temp= await Repository().detailDevice(id);
  if(sensorList.isNotEmpty || relayDimmerList.isNotEmpty ){
    relayDimmerList.clear();
    sensorList.clear();
   // dimmerList.clear();
  }

    if(temp==200) {
for(var data in deviceDetailsController.objectsTypes)
  {
    if(data.type=="Sensor")
      {
        sensorList.add(data );

      }
    if(data.type=="Relay" || data.type=="Dimmer")
    {
      relayDimmerList.add(data);

    }
    // if(data.type=="Dimmer")
    // {
    //   dimmerList.add(data);
    //
    // }

  }

print("sensor${sensorList[0].deviceProfileId}");
print("relay$relayDimmerList");
//print("Dimmer$dimmerList");

      emit(DeviceDetailsLoaded());
    }
    else if(temp==10)
    {
      emit(DeviceDetailsInternetError());

    }
    else
    {
      emit(DeviceDetailsUnknownError());

    }
  }
}
