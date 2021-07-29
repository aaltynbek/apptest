import 'package:apptest/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  final value;
  final Function(dynamic) onChanged;
  final groupValue;

  const CustomRadio({ 
    Key key,
    this.groupValue,
    this.value,
    this.onChanged
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        primary: Colors.black54,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 11.5),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      onPressed: (){
        onChanged(value);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$value',
            style: TextStyle(
              color: AppColors.black,
              fontSize: 15
            ),
          ),
          CustomRadioButton(accept: groupValue == value)
        ],
      ),
    );
  }
}


class CustomRadioButton extends StatelessWidget {
  final bool accept;

  const CustomRadioButton({Key key, this.accept}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          accept? 10 : 10
        ),
        border: Border.all(
          color: accept? AppColors.lightBlue : AppColors.gray,
          width: accept? 2 : 2
        )
      ),
      child: accept? Container(
        margin: const EdgeInsets.all(2.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.lightBlue
        ),
      ) : null,
    );
  }
}