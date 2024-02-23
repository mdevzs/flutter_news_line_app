import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:sizer_pro/sizer.dart';

class CustomTextFieldDropDown extends StatelessWidget {
  final String hintText;
  final List<String> itemList;
  final Function(String value) onValueSelected;
  CustomTextFieldDropDown({
    super.key,
    required this.itemList,
    required this.hintText,
    required this.onValueSelected,
  });
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      hint: customText(
        hintText,
        fontSize: 7,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.bgTextFieldColor,
        contentPadding: EdgeInsets.symmetric(vertical: 8.sp),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      items: itemList
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: customText(
                item,
                fontSize: 8,
              ),
            ),
          )
          .toList(),
      onChanged: (value) {
        onValueSelected(value!);
      },
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.sp),
        ),
      ),
      menuItemStyleData: MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: 8.sp),
      ),
      buttonStyleData: ButtonStyleData(
        padding: EdgeInsets.only(right: 4.sp),
      ),
      dropdownSearchData: DropdownSearchData(
        searchController: textEditingController,
        searchInnerWidgetHeight: 50,
        searchInnerWidget: Container(
          height: 50,
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 4,
            right: 8,
            left: 8,
          ),
          child: TextFormField(
            expands: true,
            maxLines: null,
            controller: textEditingController,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              hintText: 'Search for a topic...',
              hintStyle: const TextStyle(fontSize: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        searchMatchFn: (item, searchValue) {
          return item.value.toString().toLowerCase().contains(searchValue);
        },
      ),
    );
  }
}
