import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:sizer_pro/sizer.dart';

class ImagePickerWidget extends StatefulWidget {
  final Function(String image) selectedImage;
  const ImagePickerWidget({
    super.key,
    required this.selectedImage,
  });

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File? imageFile;
  final pickImage = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final xFile = await pickImage.pickImage(
          source: ImageSource.gallery,
        );
        if (xFile != null) {
          setState(() {
            imageFile = File(xFile.path);
          });
          widget.selectedImage(xFile.path);
        }
      },
      child: Container(
        width: 100.w,
        height: 25.h,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: AppColors.bgTextFieldColor,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        child: imageFile != null
            ? Image.file(
                imageFile!,
                fit: BoxFit.cover,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.photo_size_select_actual_rounded,
                    size: 32,
                    color: Colors.grey,
                  ),
                  gapH4,
                  customText(
                    'Add cover image',
                    fontSize: 7,
                  ),
                ],
              ),
      ),
    );
  }
}
