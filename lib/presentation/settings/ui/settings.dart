import 'package:apptest/base/base_provider.dart';
import 'package:apptest/presentation/settings/provider/settings_provider.dart';
import 'package:apptest/utils/theme.dart';
import 'package:apptest/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColors.lightWhite,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
      body: BaseProvider<SettingsProvider>(
        model: SettingsProvider(),
        builder: (context, model, child) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(AppPngImages.avatar),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(
                      'rustamivanov',
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                    subtitle: Text(
                      'Moscow, Russia',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.gray
                      ),
                    ),
                    trailing: SvgPicture.asset(AppSvgImages.ic_next),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(),
                  ),

                  CustomItem(
                    title: 'Blocked users', 
                    onPressed: (){}
                  ),

                  CustomItem(
                    title: 'Language', 
                    subtitle: 'English',
                    onPressed: (){}
                  ),

                  CustomItem(
                    title: 'Measures', 
                    onPressed: (){
                      model.goToMeasures(context);
                    }
                  ),

                  CustomItem(
                    title: 'Clean cache', 
                    subtitle: '64 kb',
                    trailing: false,
                    onPressed: (){}
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(),
                  ),
                  
                  CustomItem(
                    title: 'Share app', 
                    onPressed: (){}
                  ),

                  CustomItem(
                    title: 'Support', 
                    onPressed: (){}
                  ),
                
                  CustomItem(
                    title: 'Log out', 
                    trailing: false,
                    onPressed: (){}
                  ),

                ],
              ),
            ),
          );
        }
      ),
    );
  }

}