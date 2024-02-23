import 'package:flutter/material.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:sizer_pro/sizer.dart';

class RemovebleTagButton extends StatelessWidget {
  final String title;
  final Function() onRemovePressed;
  const RemovebleTagButton({
    super.key,
    required this.title,
    required this.onRemovePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.sp,
        vertical: 2.sp,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.sp),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          customText(
            title,
            fontSize: 8,
          ),
          gapW8,
          InkWell(
            onTap: onRemovePressed,
            child: const Icon(
              Icons.close,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
