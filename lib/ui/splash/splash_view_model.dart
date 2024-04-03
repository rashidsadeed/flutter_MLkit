import 'package:mlkit_base/ui/main/main_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.router.dart';

class SplashViewModel extends MainViewModel{
  init() {
    Future.delayed(const Duration(seconds: 3), (){
      NavigationService().pushNamedAndRemoveUntil(Routes.mainView);
    });
  }
}

