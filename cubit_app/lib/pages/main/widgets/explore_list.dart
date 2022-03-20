import 'package:cubit_app/common/model/explore_model.dart';
import 'package:cubit_app/common/styles/text.dart';
import 'package:cubit_app/pages/home/controller.dart';
import 'package:cubit_app/pages/main/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreList extends StatelessWidget {
  ExploreList({Key? key}) : super(key: key);
  final MainController controller = Get.find<MainController>();

  Widget _buildItem(int index){
    ExploreModel model = controller.exploreList[index];
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(model.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 80,
          height: 20,
          alignment: Alignment.center,
          child: contentText(text: model.text),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (_, index){
          return _buildItem(index);
        },
        separatorBuilder: (_, index){
          return const SizedBox(width: 30,);
        },
      ),
    );
  }
}
