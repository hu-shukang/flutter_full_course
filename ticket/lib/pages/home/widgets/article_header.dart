import 'package:flutter/material.dart';
import 'package:ticket/common/model/home.dart';
import 'package:ticket/common/style/color.dart';
import 'package:ticket/common/style/text.dart';

class ArticleHeader extends StatelessWidget {
  final ArticleHeaderModel model;

  const ArticleHeader({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
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
