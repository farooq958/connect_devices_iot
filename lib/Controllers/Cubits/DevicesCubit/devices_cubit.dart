import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/repo.dart';

part 'devices_state.dart';

class AllDevicesCubit extends Cubit<AllDevicesState> {
  AllDevicesCubit() : super(AllDevicesInitial());
  loadUserDevices(searchQuery)
  async {

    var temp= await Repository().getAllDevices(searchQuery);
    if(temp==200) {

      emit(AllDevicesLoaded());
    }
    else if(temp==10)
    {
      emit(AllDevicesInternetError());

    }
    else
    {
      emit(AllDevicesUnknownError());

    }
  }

}
