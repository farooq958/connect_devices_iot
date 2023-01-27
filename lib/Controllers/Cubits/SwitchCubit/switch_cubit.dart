import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/all_devices_controller.dart';



class SwitchCubit extends Cubit<List<Map<String,bool>>> {
  SwitchCubit() : super(List.generate(allUserDevices.userDevices.length, (index) => {allUserDevices.userDevices[index].name:false}));
// List<Map<String,bool>> toAdd=[];
  switchToggleState(List<Map<String,bool>> toggle)
  {
//toAdd.add(toggle);
print(toggle);
    emit(toggle);

  }
}
