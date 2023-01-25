import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:veevo_connect/Controllers/Repository/repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  registerDevice(deviceName,deviceSerial,placeId,longitude,latitude)
  async {

    var temp= await Repository().registerDevice(deviceName: deviceName, deviceSerial: deviceSerial, placeId: placeId, longitude: longitude, latitude: latitude);
    if(temp==200) {

      emit(RegisterSuccess());
    }
    else if(temp==10)
    {
      emit(RegisterInternetError());

    }
    else
    {
      emit(RegisterUnknownError());

    }
  }

}
