import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/customfont.dart';

class LikeButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LikeButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: const Icon(
        Icons.thumb_up,
        color: FB_DARK_PRIMARY,
      ),
      label: CustomFont(
        text: '5000 Like',
        fontSize: ScreenUtil().setSp(12),
        color: FB_DARK_PRIMARY,
      ),
    );
  }
}

class CommentButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool showCommentSection;

  const CommentButton({
    super.key,
    required this.onPressed,
    required this.showCommentSection,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: const Icon(
        Icons.comment,
        color: FB_DARK_PRIMARY,
      ),
      label: CustomFont(
        text: showCommentSection ? 'Hide Comments' : 'Comment',
        fontSize: ScreenUtil().setSp(12),
        color: FB_DARK_PRIMARY,
      ),
    );
  }
}