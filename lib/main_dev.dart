import 'package:blabla/data/repositories/location/location_repository.dart';
import 'package:blabla/data/repositories/location/location_repository_mock.dart';
import 'package:blabla/data/repositories/ride/ride_repository.dart';
import 'package:blabla/data/repositories/ride/ride_repository_mock.dart';
import 'package:blabla/data/repositories/ride_preference/ride_preference_repository_mock.dart';
import 'package:blabla/main_common.dart';
import 'package:blabla/ui/states/ride_preference_state.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> get devProviders {
  return [
    // 1 - inject ride preference state
    ChangeNotifierProvider<RidePreferenceState>(
      create: (_) => RidePreferenceState(
        ridePreferenceRepository: RidePreferenceRepositoryMock(),
      ),
    ),

    // 2 - inject ride repository
    Provider<RideRepository>(create: (_) => RideRepositoryMock()),

    // 3 - inject location repository
    Provider<LocationRepository>(create: (_) => LocationRepositoryMock()),
  ];
}

void main() {
  mainCommon(devProviders);
}
