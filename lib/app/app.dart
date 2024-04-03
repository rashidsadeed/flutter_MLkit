import 'package:stacked/stacked_annotations.dart';

import '../ui/main/main_view.dart';
import '../ui/splash/splash_view.dart';

@StackedApp(
  routes : [
    MaterialRoute(page:SplashView, initial:true),
    MaterialRoute(page: MainView),
  ]
)
class App{

}