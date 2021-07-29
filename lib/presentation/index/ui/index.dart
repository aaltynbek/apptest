import 'package:apptest/base/base_provider.dart';
import 'package:apptest/presentation/index/provider/index_provider.dart';
import 'package:apptest/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<IndexProvider>(
      model: IndexProvider(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: AppColors.lightWhite,
          body: model.pages.elementAt(model.selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.darkWhite,
            currentIndex: model.selectedIndex,
            onTap: model.onItemTapped,
            selectedItemColor: AppColors.lightBlue,
            unselectedItemColor: AppColors.gray,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgImages.ic_main,
                  color: model.getColor(model.selectedIndex == 0),
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgImages.ic_community,
                  color: model.getColor(model.selectedIndex == 1),
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgImages.ic_chat,
                  color: model.getColor(model.selectedIndex == 2),
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgImages.ic_settings,
                  color: model.getColor(model.selectedIndex == 3),
                ),
                label: ''
              ),
            ]
          )
        );
      }
    );
  }
}