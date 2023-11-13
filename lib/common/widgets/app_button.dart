import 'package:flutter/material.dart';
import 'package:learning_app/common/app_colors.dart';

class AppButton extends StatelessWidget {
  AppButton({Key? key, required this.text, required this.onPressed, this.minWidth = 100})
      : super(key: key);
  final String text;
  final void Function()? onPressed;
  double minWidth;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: minWidth),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryElement ),
        onPressed: onPressed,
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
