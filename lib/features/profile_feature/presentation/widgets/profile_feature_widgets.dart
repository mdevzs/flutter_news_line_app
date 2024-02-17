import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_line_app/core/utils/app_constants.dart';
import 'package:news_line_app/features/discover_feature/presentation/widgets/network_image.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../config/app_colors.dart';

class ChangeProfileImageWidget extends StatefulWidget {
  final String? userImage;
  final Function(File imageFile) selectedImage;
  const ChangeProfileImageWidget({
    super.key,
    required this.selectedImage,
    required this.userImage,
  });

  @override
  State<ChangeProfileImageWidget> createState() =>
      _ChangeProfileImageWidgetState();
}

class _ChangeProfileImageWidgetState extends State<ChangeProfileImageWidget> {
  File? imageFile;
  final pickImage = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          ClipOval(
              child: SizedBox(
            width: 50.sp,
            height: 50.sp,
            child: imageFile != null
                ? Image.file(
                    imageFile!,
                    fit: BoxFit.cover,
                  )
                : widget.userImage != null
                    ? AppNetworkImage(
                        url: widget.userImage,
                        fit: BoxFit.cover,
                        errorAsset: AppConstatns.Profile_Picture_ASSET,
                      )
                    : Image.asset(
                        'assets/icons/profile.png',
                        fit: BoxFit.fitWidth,
                      ),
          )),
          Positioned(
            bottom: 5,
            right: 5,
            child: InkWell(
              onTap: () async {
                final xFile = await pickImage.pickImage(
                  source: ImageSource.gallery,
                );
                if (xFile != null) {
                  setState(() {
                    imageFile = File(xFile.path);
                  });
                  widget.selectedImage(File(xFile.path));
                }
              },
              child: Container(
                padding: EdgeInsets.all(2.sp),
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(3.sp)),
                child: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
