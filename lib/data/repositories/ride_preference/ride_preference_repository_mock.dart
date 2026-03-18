import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';

import 'ride_preference_repository.dart';

class RidePreferenceRepositoryMock extends RidePreferenceRepository{
  @override
  List<RidePreference> loadRidePreference() {
    return fakeRidePrefs;
  }
  
  @override
  void addRidePreference(RidePreference newRidePreference) {
    fakeRidePrefs.add(newRidePreference);
  }
}