import 'package:blabla/model/ride/ride.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:flutter/material.dart';

import '../../../../data/repositories/ride/ride_repository.dart';
import '../../../states/ride_preference_state.dart';

class RideSelectionViewModel extends ChangeNotifier {
  final RidePreferenceState ridePreferenceState;
  final RideRepository rideRepository;

  RideSelectionViewModel({
    required this.ridePreferenceState,
    required this.rideRepository,
  }) {
    ridePreferenceState.addListener(notifyListeners);
  }

  // get selected ride pref
  RidePreference selectedRidePreference() {
    return ridePreferenceState.ridePreference ??
        (ridePreferenceState.history.isNotEmpty
            ? ridePreferenceState.history.last
            : throw StateError('No ride preference available'));
  }

  // filter rides based on the selected preferences
  List<Ride> matchingRides(RidePreference preferences) {
    return rideRepository
        .loadRides()
        .where(
          (ride) =>
              ride.departureLocation == preferences.departure &&
              ride.arrivalLocation == preferences.arrival &&
              ride.availableSeats >= preferences.requestedSeats,
        )
        .toList();
  }

  void updateRidePreference(RidePreference newPreference) {
    ridePreferenceState.setRidePreference(newPreference);
  }

  void onRideSelected(Ride ride) {
    // later implement to save selected ride
  }

  @override
  void dispose() {
    ridePreferenceState.removeListener(notifyListeners);
    super.dispose();
  }
}
