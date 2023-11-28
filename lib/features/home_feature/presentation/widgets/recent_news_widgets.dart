import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/recent_news_page/bloc/recent_news_bloc.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../config/app_colors.dart';
import '../../../../core/widgets/widgets.dart';

Widget tagsSection(BuildContext context, {required RecentNewsState state}) {
  return SizedBox(
    height: 5.h,
    child: state.tagsStatus.when(
      loading: () {
        debugPrint('all recent loading state');
        return const Center(child: CircularProgressIndicator());
      },
      success: (tags) {
        debugPrint('all recent success state');
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tags.length,
          itemBuilder: (context, index) {
            bool isSelected = state.selectedTagId == tags[index].id;
            return GestureDetector(
              onTap: () {
                context
                    .read<RecentNewsBloc>()
                    .add(RecentNewsEvent.selectTag(tags[index]));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.sp),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: !isSelected
                        ? Colors.transparent
                        : AppColors.primaryColor,
                    border: !isSelected
                        ? Border.all(color: Colors.grey.withOpacity(0.4))
                        : null,
                  ),
                  child: Center(
                    child: customText(
                      tags[index].name,
                      fontSize: 8,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      error: (message) {
        return ElevatedButton(
          onPressed: () {
            context.read<RecentNewsBloc>().add(
                  const RecentNewsEvent.getAllTags(),
                );
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(20.w, 12.w),
            backgroundColor: AppColors.primaryColor,
          ),
          child: customText(
            'try agin',
            fontSize: 4.f,
            color: Colors.white,
          ),
        );
      },
    ),
  );
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
}){
  return PopupMenuItem(
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