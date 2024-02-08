import 'package:flutter/material.dart';
import 'package:sawara_task/View/utilities/colors.dart';

alltext(
    {required var txt,
    required Color col,
    required double siz,
    required var wei,
    required var max}) {
  return Text(
    txt,
    style: TextStyle(fontSize: siz, fontWeight: wei, color: col),
    maxLines: max,
  );
}

allbuttontext(
  
    {
     double? size,
      
      
      required var txt,
    required Color col,
    required double siz,
    required var wei,
    required IconData ico,
    required var max}) {
  return TextButton.icon(
      onPressed:null,
      icon: Icon(ico,color: blu,size: size,),
      label: Text(
        txt,
        style: TextStyle(fontSize: siz, fontWeight: wei, color: col),
        maxLines: max,
      ));
}
