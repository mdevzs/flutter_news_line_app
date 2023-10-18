import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:sizer_pro/sizer.dart';

import '../../features/auth_feature/presentation/pages/sign_in_page/bloc/sign_in_bloc.dart';

Widget customText(String text,
    {Color color = Colors.black,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    int? maxLines,
    TextAlign? textAlign}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize.f,
      fontWeight: fontWeight,
    ),
    textAlign: textAlign,
    maxLines: maxLines,
  );
}

Widget appButton(
  String text, {
  required double width,
  required double height,
  EdgeInsetsGeometry padding = const EdgeInsets.all(4),
  double fontSize = 12,
  Color bgColor = AppColors.primaryColor,
  Color textColor = Colors.white,
  required Function() onButtonPress,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.sp),
      ),
      minimumSize: Size(width.w, height.h),
      padding: padding,
    ),
    onPressed: onButtonPress,
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize.f,
        color: textColor,
      ),
    ),
  );
}

Widget appIconButton({
  required String icon,
  required String text,
}) {
  return TextButton.icon(
    onPressed: () {},
    icon: Image.asset(
      icon,
      width: 10.sp,
    ),
    label: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 7.f,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.sp),
        side: BorderSide(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
    ),
  );
}

final _textFieldBorder = OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: BorderRadius.circular(4.sp),
);

Widget appTextFormField({
  required Icon icon,
  required String hintText,
  required Function(String value) onChangeValue,
  required String? Function(String? value) validator,
}) {
  return TextFormField(
    decoration: InputDecoration(
      prefixIcon: icon,
      prefixIconColor: Colors.grey,
      hintText: hintText,
      enabledBorder: _textFieldBorder,
      focusedBorder: _textFieldBorder,
      filled: true,
      fillColor: AppColors.bgTextFieldColor,
    ),
    onChanged: (value) => onChangeValue(value),
    validator: (value) => validator(value),
  );
}

Widget appPasswordTextFormField(
  BuildContext context,
  SignInState state, {
  required Function(String value) onChangeValue,
  required String? Function(String? value) validator,
}) {
  return TextFormField(
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.lock),
      prefixIconColor: Colors.grey,
      suffixIcon: IconButton(
        onPressed: () {
          context
              .read<SignInBloc>()
              .add(const SignInEvent.obsecurePasswordToggle());
        },
        icon: state.obscurePassword
            ? const Icon(Icons.visibility_off)
            : const Icon(Icons.visibility),
      ),
      hintText: 'Password',
      enabledBorder: _textFieldBorder,
      focusedBorder: _textFieldBorder,
      filled: true,
      fillColor: AppColors.bgTextFieldColor,
    ),
    obscureText: state.obscurePassword,
    autocorrect: false,
    enableSuggestions: false,
    onChanged: (value) => onChangeValue(value),
    validator: (value) => validator(value),
  );
}


