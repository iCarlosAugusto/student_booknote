import 'dart:io';
import 'package:flutter/material.dart';

class ProfilePhotoWidget extends StatelessWidget {
  const ProfilePhotoWidget({super.key, this.photo, this.margin});
  
  final File? photo;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {

    return photo == null 
      ? Container(
        margin: margin,
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 2
          )
        ),
        child: const Align(child: Icon(Icons.person_outlined, size: 52))
      ) 
      : Container(
        margin: margin,
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black87,
          image: DecorationImage(  
            image: FileImage(photo!)
          )
        )
      );
  }
}
