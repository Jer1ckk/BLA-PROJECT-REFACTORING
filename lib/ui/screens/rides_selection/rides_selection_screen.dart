import 'package:blabla/ui/screens/rides_selection/view_model/ride_selection_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/repositories/ride/ride_repository.dart';
import '../../states/ride_preference_state.dart';
import 'widgets/rides_seletion_content.dart';

class RidesSelectionScreen extends StatelessWidget {
  const RidesSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RideSelectionViewModel>(
      create: (context) => RideSelectionViewModel(
        ridePreferenceState: context.read<RidePreferenceState>(),
        rideRepository: context.read<RideRepository>(),
      ),
      child: Builder(
        builder: (context) {
          final viewModel = context.watch<RideSelectionViewModel>();
          return RidesSelectionContent(viewModel: viewModel);
        },
      ),
    );
  }
}
