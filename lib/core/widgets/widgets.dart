import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:news_line_app/core/widgets/slider_widget.dart';
import 'package:sizer_pro/sizer.dart';

import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/utils/gaps.dart';

Widget customText(
  String text, {
  Color color = Colors.black,
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.normal,
  int? maxLines,
  TextAlign? textAlign,
  TextOverflow? overflow,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize.f,
      fontWeight: fontWeight,
      overflow: overflow,
    ),
    textAlign: textAlign,
    maxLines: maxLines,
  );
}

Widget appButton(
  String text, {
  required double width,
  required double height,
  bool isLoading = false,
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
    child: isLoading
        ? SizedBox(
            width: 10.sp,
            height: 10.sp,
            child: const CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.white,
            ),
          )
        : Text(
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
  required Function() onPresssed,
}) {
  return TextButton.icon(
    onPressed: onPresssed,
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

final textFieldBorder = OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: BorderRadius.circular(4.sp),
);

Widget appTextFormField({
  TextEditingController? controller,
  Icon? icon,
  Icon? sufficxIcon,
  required String hintText,
  bool showClearIcon = false,
  bool readOnly = false,
  int maxLine = 1,
  Color? suffixHighlightColor,
  FocusNode? focusNode,
  required Function(String value) onChangeValue,
  required String? Function(String? value) validator,
  Function()? onTap,
  Function()? onClearedButtonPressed,
  Function()? onSuffixButtonPressed,
}) {
  return TextFormField(
    controller: controller,
    readOnly: readOnly,
    focusNode: focusNode,
    onTap: onTap,    
    decoration: InputDecoration(
      prefixIcon: icon,
      prefixIconColor: Colors.grey,
      suffixIcon: (showClearIcon && controller!.text.isNotEmpty) ||
              (sufficxIcon != null)
          ? IconButton(
              highlightColor: suffixHighlightColor,
              icon: sufficxIcon ?? const Icon(Icons.clear),
              onPressed: () {
                if (showClearIcon) {
                  controller?.clear();
                  onClearedButtonPressed?.call();
                } else {
                  onSuffixButtonPressed?.call();
                }
              },
            )
          : null,
      suffixIconColor: Colors.black,
      hintText: hintText,
      enabledBorder: textFieldBorder,
      focusedBorder: textFieldBorder,
      //prefix: const Text('@admin'),
      filled: true,
      fillColor: AppColors.bgTextFieldColor,
    ),
    minLines: maxLine,
    maxLines: maxLine,
    onChanged: (value) => onChangeValue(value),
    validator: (value) => validator(value),
  );
}

Widget appPasswordTextFormField(
  BuildContext context,
  bool obscurePassword, {
  TextEditingController? controller,
  required Function() onTogglePasswordIconPressed,
  required Function(String value) onChangeValue,
  required String? Function(String? value) validator,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.lock),
      prefixIconColor: Colors.grey,
      suffixIcon: IconButton(
        onPressed: onTogglePasswordIconPressed,
        icon: obscurePassword
            ? const Icon(Icons.visibility_off)
            : const Icon(Icons.visibility),
      ),
      hintText: 'Password',
      enabledBorder: textFieldBorder,
      focusedBorder: textFieldBorder,
      filled: true,
      fillColor: AppColors.bgTextFieldColor,
    ),
    obscureText: obscurePassword,
    autocorrect: false,
    enableSuggestions: false,
    onChanged: (value) => onChangeValue(value),
    validator: (value) => validator(value),
  );
}

Widget textWithIcon({
  required String text,
  String? icon,
  IconData? iconData,
  double iconDataSize = 8,
  Color iconDataColor = Colors.black,
  double fontSize = 16,
  Color fontColor = Colors.black,
  double iconSize = 20,
  double spaceBetween = 3,
}) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: text,
          style: TextStyle(
            fontSize: fontSize.f,
            color: fontColor,
          ),
        ),
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: Padding(
            padding: EdgeInsets.only(
              left: spaceBetween.sp,
              bottom: icon != null ? 5.sp : 0,
            ),
            child: iconData != null
                ? Icon(
                    iconData,
                    size: iconDataSize.sp,
                    color: iconDataColor,
                  )
                : Image.asset(
                    icon!,
                    width: iconSize.sp,
                  ),
          ),
        )
      ],
    ),
  );
}

Widget errorWidget({
  required String errorMessage,
  double errorFontSize = 4,
  double tryAgainWith = 20,
  double tryAgainHeight = 12,
  String tryAgainText = 'try again',
  double tryAgainFontSize = 4,
  required Function() onTryAgainPressed,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      customText(
        errorMessage,
        fontSize: errorFontSize.f,
        fontWeight: FontWeight.bold,
        textAlign: TextAlign.center,
      ),
      gapH4,
      ElevatedButton(
        onPressed: onTryAgainPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(tryAgainWith.w, tryAgainHeight.w),
          backgroundColor: AppColors.primaryColor,
        ),
        child: customText(
          tryAgainText,
          fontSize: tryAgainFontSize.f,
          color: Colors.white,
        ),
      )
    ],
  );
}

class IconWidget extends StatelessWidget {
  final IconData? icon;
  final String? assetImage;
  final Function() onTap;
  const IconWidget(
      {super.key, this.icon, this.assetImage, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Padding(
        padding: EdgeInsets.all(1.5.sp),
        child: assetImage != null
            ? Image.asset(
                assetImage!,
                width: 10.sp,
              )
            : Icon(icon!),
      ),
    );
  }
}

class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget icon;
  const PopUpMen({
    super.key,
    required this.menuList,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          4.sp,
        ),
      ),
      itemBuilder: (context) => menuList,
      icon: icon,
    );
  }
}

PopupMenuItem popupMenuItem({
  required IconData icon,
  required String title,
  bool haveDivider = true,
  required Function() onTap,
}) {
  return PopupMenuItem(
    onTap: onTap,
    child: Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: customText(
            title,
            fontSize: 6,
          ),
        ),
        if (haveDivider) const Divider(),
      ],
    ),
  );
}

Future displaySettingsButtomSheet(BuildContext context) async {
  return showModalBottomSheet(
    isScrollControlled: true,
    shape: const BeveledRectangleBorder(),
    context: context,
    builder: (context) {
      return SizedBox(
        height: 90.h,
        width: 100.w,
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                'Brightness',
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
              SliderTheme(
                data: SliderThemeData(
                    //trackShape: BrightnessSliderShape(),
                    ),
                child: FlutterSlider(
                  values: const [15],
                  min: 0,
                  max: 30,
                  tooltip: FlutterSliderTooltip(
                    disabled: true,
                  ),
                  trackBar: FlutterSliderTrackBar(
                    activeTrackBarHeight: 8.sp,
                    inactiveTrackBarHeight: 8.sp,
                    activeTrackBar: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    inactiveTrackBar: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                  ),
                  handler: FlutterSliderHandler(
                    child: Icon(Icons.light_mode_outlined),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              //const MyCustomSlider(),
              gapH8,
              customText(
                'Background Color',
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
              gapH4,
              SizedBox(
                height: 15.h,
                child: BackgroundColorGridView(
                  selectedColorIndex: (colorIndex) {
                    //debugPrint('selected color index: $colorIndex');
                  },
                ),
              ),
              gapH8,
              customText(
                'Font',
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
              gapH4,
              FontsWidget(
                selectedFont: (selectedFont) {},
              ),
              gapH8,
              customText(
                'Font Size',
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
              const MyCustomSlider(),
              gapH8,
              customText(
                'Align Text',
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
              gapH4,
              const AlignTextWidget(),
              const Spacer(),
              Divider(
                color: Colors.grey.withOpacity(0.3),
              ),
              gapH4,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appButton(
                    'Cancel',
                    width: 42,
                    height: 5,
                    bgColor: AppColors.bgButtonColor,
                    textColor: AppColors.primaryColor,
                    fontSize: 8,
                    padding: EdgeInsets.all(4.sp),
                    onButtonPress: () {},
                  ),
                  appButton(
                    'Apply',
                    width: 42,
                    height: 5,
                    fontSize: 8,
                    padding: EdgeInsets.all(4.sp),
                    onButtonPress: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}

class AlignTextWidget extends StatefulWidget {
  const AlignTextWidget({super.key});

  @override
  State<AlignTextWidget> createState() => _AlignTextWidgetState();
}

class _AlignTextWidgetState extends State<AlignTextWidget> {
  final alignIcons = [
    {
      'icon': Icons.format_align_left_sharp,
      'textAlign': 'left',
    },
    {
      'icon': Icons.format_align_right,
      'textAlign': 'right',
    },
    {
      'icon': Icons.format_align_center,
      'textAlign': 'center',
    },
    {
      'icon': Icons.format_align_justify,
      'textAlign': 'justify',
    },
  ];
  bool isSelected = false;
  String selectedTextAling = 'selectedTextAlign';
  String oldSelectedTextAling = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 6.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.sp),
        color: Colors.grey.withOpacity(0.3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: alignIcons
            .map(
              (item) => Expanded(
                child: InkWell(
                  onTap: () {
                    final textAlign = item['textAlign'] as String;
                    oldSelectedTextAling = textAlign;
                    if (oldSelectedTextAling != selectedTextAling) {
                      setState(
                        () {
                          selectedTextAling = textAlign;
                          //debugPrint(selectedTextAling);
                          isSelected = selectedTextAling == textAlign;
                        },
                      );
                    }
                  },
                  child: Container(
                    height: double.infinity,
                    color: isSelected &&
                            selectedTextAling == item['textAlign'] as String
                        ? AppColors.primaryColor
                        : null,
                    child: Icon(item['icon'] as IconData),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class FontsWidget extends StatefulWidget {
  final Function(String font) selectedFont;
  const FontsWidget({
    Key? key,
    required this.selectedFont,
  }) : super(key: key);

  @override
  State<FontsWidget> createState() => _FontsWidgetState();
}

class _FontsWidgetState extends State<FontsWidget> {
  final fonts = [
    'Urbanist',
    'Roboto',
    'Source Sans Pro',
    'Georgia',
    'Poppins',
    'Sans Serif',
    'Goudy',
  ];
  bool isSelected = false;
  String selectedFont = '';
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 2.sp,
      runSpacing: 2.sp,
      children: fonts
          .map(
            (font) => GestureDetector(
              onTap: () {
                setState(
                  () {
                    selectedFont = font;
                    isSelected = font == selectedFont;
                  },
                );
                widget.selectedFont(font);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3.sp, horizontal: 2.sp),
                decoration: BoxDecoration(
                  color: isSelected && font == selectedFont
                      ? AppColors.primaryColor
                      : Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(8.sp),
                  border: isSelected && font == selectedFont
                      ? null
                      : Border.all(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.sp),
                  child: customText(
                    font,
                    fontSize: 7,
                    color: isSelected && font == selectedFont
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class BackgroundColorGridView extends StatefulWidget {
  final Function(int index) selectedColorIndex;
  const BackgroundColorGridView({
    Key? key,
    required this.selectedColorIndex,
  }) : super(key: key);

  @override
  State<BackgroundColorGridView> createState() =>
      _BackgroundColorGridViewState();
}

class _BackgroundColorGridViewState extends State<BackgroundColorGridView> {
  bool isSelected = false;
  int selectedIndex = -1;
  int oldIndex = 0;
  List<Color> myColors = [
    Colors.red,
    Colors.black,
    Colors.blueAccent,
    Colors.green,
    Colors.orange
  ];
  @override
  Widget build(BuildContext context) {
    //debugPrint('rebuiodd');
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: myColors.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 4.sp,
        mainAxisSpacing: 3.sp,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            oldIndex = index;
            //* if the selected color is same as befor the state will not change
            if (oldIndex != selectedIndex) {
              setState(() {
                selectedIndex = index;
                isSelected = selectedIndex == index;
              });
            }
            widget.selectedColorIndex(index);
          },
          child: Container(
            decoration: BoxDecoration(
              color: myColors[index],
              borderRadius: BorderRadius.circular(4.sp),
              border: isSelected && selectedIndex == index
                  ? Border.all(
                      color: AppColors.primaryColor,
                      width: 3,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    )
                  : null,
            ),
          ),
        );
      },
    );
  }
}

class MyCustomSlider extends StatefulWidget {
  const MyCustomSlider({super.key});

  @override
  State<MyCustomSlider> createState() => _MyCustomSliderState();
}

class _MyCustomSliderState extends State<MyCustomSlider> {
  double sliderValue = 0.3;
  ui.Image? customImage;
  Future<ui.Image> loadImage(String assetPath) async {
    ByteData data = await rootBundle.load(assetPath);
    ui.Codec codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(),
      targetHeight: 40,
      targetWidth: 40,
    );
    ui.FrameInfo fi = await codec.getNextFrame();

    return fi.image;
  }

  @override
  void initState() {
    loadImage('assets/icons/brightness.png').then(
      (image) => customImage = image,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 8.sp,
        //tickMarkShape: CustomTick(),
        trackShape: BrightnessSliderShape(),

        thumbShape: SliderThumbImage(customImage),
        //tickMarkShape: SliderTickMarkShape.noTickMark,
      ),
      child: Slider(
        value: sliderValue,
        onChanged: (val) {
          setState(() {
            sliderValue = val;
          });
        },
      ),
    );
  }
}

class CustomSliderShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(0, 0);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;

    final paint = Paint()
      ..color = Colors.red //Thumb Background Color
      ..style = PaintingStyle.fill;

    final rrect = RRect.fromRectAndRadius(
      Rect.fromCenter(
        center: center,
        width: parentBox.size.width,
        height: parentBox.size.height,
      ),
      Radius.circular(8.sp),
    );
    canvas.drawRRect(rrect, paint);
  }
}
