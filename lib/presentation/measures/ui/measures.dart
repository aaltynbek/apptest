import 'package:apptest/base/base_provider.dart';
import 'package:apptest/presentation/measures/provider/measures_provider.dart';
import 'package:apptest/utils/theme.dart';
import 'package:apptest/widgets/custom_radio_button.dart';
import 'package:apptest/widgets/custom_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeasuresPage extends StatelessWidget {
  const MeasuresPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColors.lightWhite,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            AppSvgImages.ic_back
          ), 
          onPressed: (){
            Navigator.of(context).pop();
          }
        ),
        title: Text(
          'Measures',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
      body: BaseProvider<MeasuresProvider>(
        model: MeasuresProvider(),
        builder: (context, model, child) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Distance',
                  style: TextStyle(
                    color: AppColors.gray,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
                ColumnSpacer(1),
                CustomRadio(
                  value: 'Miles',
                  groupValue: model.distanceValue,
                  onChanged: model.onDistanceChanged
                ),
                ColumnSpacer(1),
                CustomRadio(
                  value: 'Kilometers',
                  groupValue: model.distanceValue,
                  onChanged: model.onDistanceChanged
                ),

                ColumnSpacer(2),
                Text(
                  'Lenght',
                  style: TextStyle(
                    color: AppColors.gray,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
                ColumnSpacer(1),
                CustomRadio(
                  value: 'Feet',
                  groupValue: model.lenghtValue,
                  onChanged: model.onLenghtChanged
                ),
                ColumnSpacer(1),
                CustomRadio(
                  value: 'Centimeters',
                  groupValue: model.lenghtValue,
                  onChanged: model.onLenghtChanged
                ),

                ColumnSpacer(2),
                Text(
                  'Time',
                  style: TextStyle(
                    color: AppColors.gray,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
                ColumnSpacer(1),
                CustomRadio(
                  value: 'AM/PM',
                  groupValue: model.timeValue,
                  onChanged: model.onTimeChanged
                ),
                ColumnSpacer(1),
                CustomRadio(
                  value: '24 hour clock',
                  groupValue: model.timeValue,
                  onChanged: model.onTimeChanged
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}