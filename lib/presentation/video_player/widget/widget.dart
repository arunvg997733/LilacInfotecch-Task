import 'package:flutter/material.dart';
import 'package:lilacinfotechtask/core/constant/constant.dart';
import 'package:lilacinfotechtask/core/font_size/font_size.dart';
import 'package:lilacinfotechtask/presentation/widget/icon/icon_widget.dart';
import 'package:lilacinfotechtask/presentation/widget/text/text_widget.dart';

class ContainerIconWidget extends StatelessWidget {
  const ContainerIconWidget({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: kLateGrey,
          )
        ],
      ),
      child: CustomIconWidget(
        icon: icon,
        size: xXLFont,
      ),
    );
  }
}

class ContainerTextAndIconWidget extends StatelessWidget {
  const ContainerTextAndIconWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // width: 0,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: kLateGrey,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 20),
        child: Row(
          children: [
            CustomIconWidget(
              icon: icon,
              size: 50,
              color: kGreen,
            ),
            CustomTextWidget(
              text: text,
              size: mFont,
            )
          ],
        ),
      ),
    );
  }
}
