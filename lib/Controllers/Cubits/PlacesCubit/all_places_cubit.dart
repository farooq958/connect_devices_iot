import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:veevo_connect/Controllers/Repository/repo.dart';

part 'all_places_state.dart';

class AllPlacesCubit extends Cubit<AllPlacesState> {
  AllPlacesCubit() : super(AllPlacesInitial());
  loadAllPlaces(searchQuery)
  async {

    var temp= await Repository().getAllPlaces(searchQuery);
    if(temp==200) {

      emit(AllPlacesLoaded());
    }
    else if(temp==10)
    {
      emit(AllPlacesInternetError());

    }
    else
    {
      emit(AllPlacesUnknownError());

    }
  }

}
