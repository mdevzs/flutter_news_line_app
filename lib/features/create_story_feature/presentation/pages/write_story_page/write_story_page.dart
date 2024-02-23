import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/page_arguments/preview_strory_page_arguments.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/create_story_feature/presentation/widgets/image_picker_widget.dart';
import 'package:sizer_pro/sizer.dart';
import 'package:flutter_quill/src/widgets/toolbar/buttons/alignment/select_alignment_buttons.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';

class WriteStoryPage extends StatefulWidget {
  const WriteStoryPage({super.key});

  @override
  State<WriteStoryPage> createState() => _WriteStoryPageState();
}

enum AlignmentOptions {
  left(attribute: Attribute.leftAlignment),
  center(attribute: Attribute.centerAlignment),
  right(attribute: Attribute.rightAlignment),
  justifyMinWidth(attribute: Attribute.justifyAlignment);

  const AlignmentOptions({required this.attribute});

  final Attribute attribute;
}

class _WriteStoryPageState extends State<WriteStoryPage> {
  final _quillController = QuillController.basic();

  String imagePath1 = '';
  String imagePath2 = '';
  String storyCoverImage = '';
  final titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(
          'Write Stories',
          fontSize: 8,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              debugPrint(
                  'the converted json is:${_quillController.document.toDelta().toJson()}');
              final htmlConverter = QuillDeltaToHtmlConverter(
                _quillController.document.toDelta().toJson(),
                ConverterOptions(
                  sanitizerOptions: OpAttributeSanitizerOptions(
                    allow8DigitHexColors: true,
                  ),
                  converterOptions: OpConverterOptions(
                    inlineStylesFlag: true,
                  ),
                ),
              );
              debugPrint('the converted html is:${htmlConverter.convert()}');
              final arguments = PreviewStoryPageArguments(
                storyCoverImage: storyCoverImage,
                title: titleController.text,
                storyAsHtml: htmlConverter.convert(),
              );
              Navigator.pushNamed(
                context,
                AppRoutes.Preview_Story_ROUTE,
                arguments: arguments,
              );
            },
            child: customText(
              'Preview',
              fontSize: 7,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImagePickerWidget(
                selectedImage: (image) {
                  storyCoverImage = image;
                },
              ),
              gapH8,
              customText(
                'Title',
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
              gapH4,
              CustomTextField(
                controller: titleController,
                hintText: 'Your title',
                onChangeValue: (value) {},
              ),
              gapH8,
              customText(
                'Story',
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
              gapH4,
              QuillToolbar(
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: AppColors.bgTextFieldColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.sp),
                      topRight: Radius.circular(8.sp),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        QuillToolbarSelectAlignmentButtons(
                          controller: _quillController,
                        ),
                        QuillToolbarToggleStyleButton(
                          controller: _quillController,
                          attribute: Attribute.underline,
                        ),
                        QuillToolbarFontSizeButton(
                          controller: _quillController,
                        ),
                        QuillToolbarColorButton(
                          controller: _quillController,
                          isBackground: false,
                        ),
                        QuillToolbarLinkStyleButton(
                          controller: _quillController,
                        ),
                        QuillToolbarImageButton(
                          controller: _quillController,
                          options: QuillToolbarImageButtonOptions(
                            imageButtonConfigurations:
                                QuillToolbarImageConfigurations(
                              onImageInsertedCallback: (image) async {
                                imagePath1 = image;
                                debugPrint(image);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ColoredBox(
                color: AppColors.bgTextFieldColor,
                child: QuillEditor.basic(
                  configurations: QuillEditorConfigurations(
                    padding: EdgeInsets.symmetric(horizontal: 8.sp),
                    minHeight: 40.h,
                    controller: _quillController,
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                    embedBuilders: FlutterQuillEmbeds.editorBuilders(),
                    sharedConfigurations: const QuillSharedConfigurations(
                      locale: Locale('en'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
