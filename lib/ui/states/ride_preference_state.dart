import 'package:blabla/data/repositories/ride_preference/ride_preference_repository.dart';
import 'package:flutter/material.dart';

import '../../model/ride_pref/ride_pref.dart';

class RidePreferenceState extends ChangeNotifier {

  final RidePreferenceRepository ridePreferenceRepository;
  RidePreferenceState({required this.ridePreferenceRepository});

  RidePreference? _selectedPreference;
  List<RidePreference> _preferenceHistory = [];

  void init(){
    _preferenceHistory = ridePreferenceRepository.loadRidePreference();
  }
}


