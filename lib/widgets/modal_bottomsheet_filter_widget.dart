import 'package:flutter/material.dart';

class Filter {

  Filter({required this.title, required this.icon});

  final String title;
  final IconData icon;
}

class ModalBottomSheetFilterWidget {

  ModalBottomSheetFilterWidget({required this.currentFilter});

  final Filter? currentFilter;

  var filters = [
    Filter(title: 'Médico', icon: Icons.local_hospital_outlined),
    Filter(title: 'Pediatra', icon: Icons.accessibility_new_outlined),
    Filter(title: 'Otorino', icon: Icons.hearing),
    Filter(title: 'Médico de olho', icon: Icons.blind),
    Filter(title: 'Médico de idoso', icon: Icons.assist_walker_outlined),
  ];

  //void show () {
  //  showModalBottomSheet<void>(
  //    backgroundColor: Colors.transparent,
  //    context: Get.context!,
  //    builder: (BuildContext context) {
  //      return Container(
  //        height: Get.height - 100,
  //        decoration: const BoxDecoration(
  //          color: Colors.white,
  //          borderRadius: BorderRadius.only(
  //            topLeft: Radius.circular(16),
  //            topRight: Radius.circular(16)
  //          ),
  //        ),
  //        child: Column(
  //          children: <Widget>[
  //            Container(
  //              margin: const EdgeInsets.only(top: 16, bottom: 16),
  //              width: 100,
  //              height: 5,
  //              decoration: const BoxDecoration(
  //                color: Colors.black,
  //                borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10))
  //              ),
  //            ),
  //      
  //            Expanded(
  //              child: ListView.separated(
  //                itemBuilder: (_, int index) => ListTile(
  //                  onTap: () {
  //                    Get.back();
  //                    Get.find<PartnersController>().showSelectedFilter(selectedFilter: filters[index]);
  //                  },
  //                  leading: Icon(filters[index].icon),
  //                  title: TextWidget(filters[index].title),
  //                  selected: currentFilter != null && currentFilter!.title == filters[index].title ,
  //                ),
  //                separatorBuilder: (_,__) => const Divider(),
  //                itemCount: filters.length
  //              )
  //            )
  //          ],
  //        ),
  //      );
  //    },
  //  );
  //}
}