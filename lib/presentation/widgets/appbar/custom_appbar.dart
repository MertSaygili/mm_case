import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mm_case/app/extension/context_extension.dart';

//* Customazible Appbar

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({this.centerTitle, super.key, this.title, this.actions, this.leading, this.backgroundColor});

  final String? title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool? centerTitle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leading ?? const SizedBox(),
            Text(
              title ?? '',
              style: GoogleFonts.quicksand().copyWith(
                fontSize: context.fontSize16,
                color: context.whiteColor,
                fontWeight: FontWeight.w600,
                height: 22,
              ),
            ),
            actions?.first ?? const SizedBox(),
          ],
        ),
      ),
      backgroundColor: context.transparentColor,
      elevation: context.zero,
      automaticallyImplyLeading: context.falseCode,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      shape: Border(bottom: BorderSide(color: context.borderColor, width: 0.25)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
