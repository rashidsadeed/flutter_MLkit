import 'package:flutter/material.dart';
import 'package:mlkit_base/ui/splash/splash_view_model.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, viewModel, child) => const Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Text("what up my guy",
              style: TextStyle(fontSize: 24),),
          )
      ),
    );
  }
}
