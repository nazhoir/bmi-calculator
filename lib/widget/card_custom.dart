import 'package:flutter/material.dart';

class NewCard extends StatelessWidget {
  const NewCard({
    this.width,
    required this.height,
    this.backgrounColor,
    this.padding,
    this.margin,
    required this.title,
    this.titleStyle,
    required this.content,
    Key? key,
  }) : super(key: key);
  final double? width;
  final double height;
  final Color? backgrounColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final String title;
  final TextStyle? titleStyle;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 300,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgrounColor ?? Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: titleStyle,
          ),
          content,
        ],
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  const CardButton({
    Key? key,
    this.width,
    required this.height,
    this.backgrounColor,
    this.padding,
    this.margin,
    required this.title,
    this.titleStyle,
    required this.onTap,
  }) : super(key: key);

  final double? width;
  final double height;
  final Color? backgrounColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final String title;
  final TextStyle? titleStyle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgrounColor ?? Colors.blue,
        ),
        child: Text(
          title,
          style: titleStyle,
        ),
      ),
    );
  }
}
