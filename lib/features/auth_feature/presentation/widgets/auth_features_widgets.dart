import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../core/utils/gaps.dart';
import '../pages/sign_up_create_prfile_page/bloc/sign_up_create_prfile_bloc.dart';

Widget countryListItem(
    {required String flagUrl,
    required String countryName,
    bool isSelected = false}) {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.bgTextFieldColor,
      borderRadius: BorderRadius.circular(8.sp),
      border: isSelected
          ? Border.all(
              color: AppColors.primaryColor,
              width: 1.5,
            )
          : null,
    ),
    child: ListTile(
      minVerticalPadding: 25,
      leading: SizedBox(
        width: 30.sp,
        height: 30.sp,
        child: Padding(
          padding: EdgeInsets.all(2.sp),
          child: Image.network(
            flagUrl,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: customText(
        countryName,
        fontSize: 4.f,
        fontWeight: FontWeight.bold,
      ),
      trailing: isSelected
          ? Icon(
              Icons.check,
              size: 12.sp,
              color: AppColors.primaryColor,
            )
          : null,
    ),
  );
}

PreferredSizeWidget progressAppbar({required double percentage}) {
  return AppBar(
    title: GFProgressBar(
      alignment: MainAxisAlignment.center,
      backgroundColor: AppColors.bgTextFieldColor,
      progressBarColor: AppColors.primaryColor,
      width: 50.w,
      lineHeight: 10,
      percentage: percentage,
    ),
    centerTitle: true,
  );
}

Widget continueSection({
  String text = 'Continue',
  bool isLoading = false,
  required Function() onButtonPressed,
}) {
  return Container(
    width: 100.w,
    height: 8.h,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.symmetric(
        horizontal: BorderSide(color: AppColors.primaryColor.withOpacity(0.15)),
      ),
    ),
    child: Center(
      child: appButton(
        isLoading: isLoading,
        text,
        fontSize: 8,
        width: 95,
        height: 5,
        onButtonPress: onButtonPressed,
      ),
    ),
  );
}

Widget officialAuthorListItem({
  bool isSelected = false,
  required String profileImage,
  required String offciealName,
  required Function() onFollowButtonPressed,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4.sp),
    child: Row(
      children: [
        ClipOval(
          child: Image.network(
            profileImage,
            width: 22.sp,
            fit: BoxFit.fill,
          ),
        ),
        gapW4,
        Expanded(
          child: customText(
            offciealName,
            fontSize: 8,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ElevatedButton(
          onPressed: onFollowButtonPressed,
          style: ElevatedButton.styleFrom(
            minimumSize: Size(4.w, 8.w),
            backgroundColor: isSelected ? Colors.white : AppColors.primaryColor,
            side: isSelected
                ? const BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  )
                : null,
            surfaceTintColor: Colors.white,
          ),
          child: customText(
            isSelected ? 'Following' : 'Follow',
            fontSize: 4.f,
            color: isSelected ? Colors.black : Colors.white,
          ),
        )
      ],
    ),
  );
}

Widget editProfileImage({required BuildContext context, File? imageFile}) {
  final pickImage = ImagePicker();
  return Stack(
    children: [
      ClipOval(
          child: SizedBox(
        width: 50.sp,
        height: 50.sp,
        child: imageFile != null
            ? Image.file(
                imageFile,
                fit: BoxFit.cover,
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
                if (!context.mounted) return;
                context.read<SignUpCreatePrfileBloc>().add(
                      SignUpCreatePrfileEvent.pickFile(
                        File(xFile.path),
                      ),
                    );
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
          ))
    ],
  );
}

Widget genderDropDownFormField(
    {required Function(String value) onChangeValue}) {
  final genders = ['', 'male', 'female', 'other'];
  return DropdownButtonFormField2(
    decoration: InputDecoration(
      enabledBorder: textFieldBorder,
      focusedBorder: textFieldBorder,
      filled: true,
      fillColor: AppColors.bgTextFieldColor,
    ),
    dropdownStyleData: DropdownStyleData(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(5.sp)),
      ),
    ),
    items: genders
        .map(
          (gender) => DropdownMenuItem(
            value: gender,
            child: customText(gender, fontSize: 7),
          ),
        )
        .toList(),
    onChanged: (value) {
      if (value != null) {
        onChangeValue.call(value);
      }
    },
    validator: FormBuilderValidators.required(),
  );
}

Widget phoneFormField({required TextEditingController controller}) {
  return Container(
    padding: EdgeInsets.only(left: 2.sp),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.sp),
      color: AppColors.bgTextFieldColor,
    ),
    child: InternationalPhoneNumberInput(
      textFieldController: controller,
      spaceBetweenSelectorAndTextField: 0,
      initialValue: PhoneNumber(isoCode: 'IR'),
      searchBoxDecoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search by country name or dial code',
        enabledBorder: textFieldBorder,
        focusedBorder: textFieldBorder,
        filled: true,
        fillColor: AppColors.bgTextFieldColor,
      ),
      inputDecoration: InputDecoration(
        icon: const Icon(Icons.arrow_drop_down),
        filled: true,
        fillColor: AppColors.bgTextFieldColor,
        enabledBorder: textFieldBorder,
        focusedBorder: textFieldBorder,
      ),
      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        useEmoji: true,
        trailingSpace: false,
      ),
      autoValidateMode: AutovalidateMode.onUserInteraction,
      onInputChanged: (value) {},
    ),
  );
}
