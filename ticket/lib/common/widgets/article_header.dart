import 'package:flutter/material.dart';
import 'package:ticket/common/model/home.dart';
import 'package:ticket/common/style/color.dart';
import 'package:ticket/common/style/text.dart';

class ArticleHeader extends StatelessWidget {
  final ArticleHeaderModel model;
  final bool withHorizontalPadding;

  const ArticleHeader({Key? key, required this.model, this.withHorizontalPadding = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double padding = withHorizontalPadding ? 20 : 0;
    return Padding(
      padding: EdgeInsets.only(left: padding, right: padding, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(model.title, style: AppText.headlineTextStyle2,),
          InkWell(
            child: Text("view all", style: AppText.regularTextStyle.copyWith(color: AppColor.primaryColor),),
            onTap: () {
              print(model.link);
            },
          )
        ],
      ),
    );
  }
}
