import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:shoppyshop/modules/dashboard_module/controllers/dashboard_controller.dart';
import 'package:shoppyshop/modules/favories_module/views/favories_page.dart';
import 'package:shoppyshop/modules/home_module/views/home_page_view.dart';
import 'package:shoppyshop/modules/pannier_module/views/pannier_page.dart';
import 'package:shoppyshop/shared/constant/const_colors.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                FavoriesPage(),
                PannierPage(),
              ],
            ),
          ),
          bottomNavigationBar: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(44)),
                  child: BottomNavigationBar(
                    
                    mouseCursor: SystemMouseCursors.grab,
                    unselectedItemColor: Colors.white,
                    selectedItemColor: ColorsApp.KGrey,
                    onTap: (index) {
                      controller.changeTabIndex(index);
                    },
                    currentIndex: controller.tabIndex,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: ColorsApp.KPrimary,
                    elevation: 0,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home_filled,
                        ),
                        label: 'Acceuil',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.favorite,
                        ),
                        label: 'Favories',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.shopping_cart,
                        ),
                        label: 'Pannier',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
