import 'package:apptest/utils/theme.dart';
import 'package:apptest/widgets/custom_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomItem extends StatelessWidget {
  final String title;
  final Function onPressed;
  final String subtitle;
  final bool trailing;

  const CustomItem({ 
    Key key, 
    @required this.title, 
    @required this.onPressed,
    this.subtitle,
    this.trailing = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16
        ),
      ),
      onTap: onPressed,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          subtitle == null ? const SizedBox() : Text(
            '$subtitle',
            style: TextStyle(
              color: AppColors.gray,
              fontSize: 16
            ),
          ),
          trailing? RowSpacer(1) : const SizedBox(),
          trailing? SvgPicture.asset(AppSvgImages.ic_next) : const SizedBox(),
        ],
      ),
    );
  }
}