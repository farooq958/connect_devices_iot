import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:veevo_connect/Controllers/Repository/repo.dart';

part 'edit_device_state.dart';

class EditDeviceCubit extends Cubit<EditDeviceState> {
  EditDeviceCubit() : super(EditDeviceInitial());

editDeviceFunc(deviceId,placeId,deviceName,longitude,latitude)
  async {

    var temp= await Repository().editDevice(deviceName: deviceName, placeId: placeId, longitude: longitude, latitude: latitude, deviceId: deviceId);
    if(temp==200) {

      emit(EditDeviceSuccess());
    }
    else if(temp==10)
    {
      emit(EditDeviceInternetError());

    }
    else
    {
      emit(EditDeviceUnknownError());

    }
  }
}
