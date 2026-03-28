import 'package:blabla/ui/screens/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../states/ride_preference_state.dart';
import 'widgets/home_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(
        ridePreferenceState: context.read<RidePreferenceState>(),
      ),
      child: Builder(
        builder: (context) {
          final viewModel = context.watch<HomeViewModel>();
          return HomeContent(viewModel: viewModel);
        },
      ),
    );
  }
}
