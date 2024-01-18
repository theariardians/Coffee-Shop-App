import 'package:flutter/material.dart';
import 'package:the_ari_s_application4/theme/app_decoration.dart';
import 'package:the_ari_s_application4/theme/custom_text_style.dart';

class CustomSizeContainer extends StatelessWidget {
  final String label;
  final bool isPrimary;

  const CustomSizeContainer({
    required this.label,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96.0,  // Replace with the actual value you want
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 11.0),  // Replace with the actual values you want
      decoration: isPrimary
          ? AppDecoration.outlinePrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            )
          : AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
      child: Text(
        label,
        style: isPrimary
            ? CustomTextStyles.bodyMediumPrimary
            : CustomTextStyles.bodyMediumBluegray90002,
      ),
    );
  }
}
