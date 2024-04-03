import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'main_view_model.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => MainViewModel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              createNavItem(TabItem.ImageLabeling),
              createNavItem(TabItem.TextRecognition),
              createNavItem(TabItem.FaceDetection)
            ],
          onTap: (value) {
           model.setTabindex(value);
          },

          currentIndex: model.currentTabIndex,
          ),

          body: Center(
            child: Text("this is the real deal",
              style: TextStyle(fontSize: 24),),
          )
      ),
    );
  }

  createNavItem(TabItem tabItem) {
    final currentTab = TabItemData.tabs[tabItem];
    return BottomNavigationBarItem(icon: currentTab!.icon, label: currentTab.title);
  }
}

class TabItemData {
  String title;
  Widget icon;
  TabItemData({
   required this.title,
    required this.icon
});
  static Map<TabItem, TabItemData> tabs = {
    TabItem.ImageLabeling : TabItemData(title:"Image Labeling", icon: const Icon(Icons.image)),
    TabItem.FaceDetection : TabItemData(title:"Face Detection", icon: const Icon(Icons.face)),
    TabItem.TextRecognition : TabItemData(title:"Text Recognition", icon: const Icon(Icons.text_fields)),


  };
}

enum TabItem {ImageLabeling, FaceDetection, TextRecognition}
