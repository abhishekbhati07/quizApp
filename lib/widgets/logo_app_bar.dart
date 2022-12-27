import 'package:flutter/material.dart';


Widget appBar(BuildContext context){
  return RichText(
    text: const TextSpan(
      text: 'Quiz',
      style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Colors.black),
      children: <TextSpan>[
        TextSpan(text: 'Maker', style: TextStyle(fontWeight:FontWeight.w700,fontSize: 22,color: Colors.blue)),
      ],
    ),
  );
}