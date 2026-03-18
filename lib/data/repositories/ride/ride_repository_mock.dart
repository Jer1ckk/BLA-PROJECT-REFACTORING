import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/model/ride/ride.dart';

import 'ride_repository.dart';

class RideRepositoryMock extends RideRepository{
  @override
  List<Ride> loadRides() {
    return fakeRides;
  }
}