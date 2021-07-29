import 'package:apptest/base/base_bloc.dart';
import 'package:apptest/presentation/measures/ui/measures.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends BaseBloc {

  goToMeasures(BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => MeasuresPage())
    );
  }

}