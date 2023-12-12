import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:games_list/UI/home/domain/home_entity.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'components/home_item_card.dart';
import 'components/home_item_loading_card.dart';
import 'home_controller.dart';

// TODO: - Implement with https://www.youtube.com/watch?v=nRm18oPR5z4
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home_title".tr)),
      body: Container(
        child: Obx(() {
          switch (Get.find<HomeController>().state.value.loadingState) {
            case HomeLoadingState.isAdditionLoading:
            case HomeLoadingState.isFirstLoading:
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 3.0
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 5,
                          right: 5,
                          bottom: 10,
                        ),
                      child: HomeItemLoadingCard(),
                    );
                  }
              );
            case HomeLoadingState.loaded:
              return buildLoadedContent();
          }
        })
      ),
    );
  }

  Center buildLoadedContent() {
    return Center(
      child: RefreshIndicator(
        onRefresh: () async { Get.find<HomeController>().refresh(); },
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 3.0
            ),
            itemBuilder: (BuildContext context, int index) {
              if ((Get.find<HomeController>().state.value.entity.games?.length ?? -1) <= index) {
                return HomeItemLoadingCard();
              }
              return HomeItemCard(Get.find<HomeController>().state.value.entity.games![index]);
            }
        )
      ),
    );
  }
}