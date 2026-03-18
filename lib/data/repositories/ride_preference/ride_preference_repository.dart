import 'package:blabla/model/ride_pref/ride_pref.dart';

abstract class RidePreferenceRepository {
  List<RidePreference> loadRidePreference();
  void addRidePreference(RidePreference newRidePreference);
}
