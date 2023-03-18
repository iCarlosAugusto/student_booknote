import 'package:flutter/material.dart';

class ModalOption {

  ModalOption({required this.icon, required this.onTap});

  final IconData icon;
  final Function() onTap;
}

class ModalBottomSheetWidget {

  ModalBottomSheetWidget({required this.options});

  final List<ModalOption> options; 

  //void show () {
  //  showModalBottomSheet<void>(
  //    backgroundColor: Colors.transparent,
  //    context: Get.context!,
  //    builder: (BuildContext context) {
  //      return Container(
  //        height: 190,
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
  //              margin: const EdgeInsets.only(top: 16),
  //              width: 100,
  //              height: 5,
  //              decoration: const BoxDecoration(
  //                color: Colors.black,
  //                borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10))
  //              ),
  //            ),
  //            Expanded(
  //              child: Row(
  //                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                crossAxisAlignment: CrossAxisAlignment.center,
  //                children: 
  //                  options.map((ModalOption option) => InkWell(
  //                    onTap: option.onTap,
  //                    child: Container(
  //                      decoration: const BoxDecoration(
  //                        borderRadius: BorderRadius.all(Radius.circular(10)),
  //                        color: Colors.grey,
  //                      ),
  //                      padding: const EdgeInsets.all(32),
  //                      child: Icon(option.icon, color: Colors.white),
  //                    ),
  //                  )).toList(),
  //              ),
  //            )
  //          ],
  //        ),
  //      );
  //    },
  //  );
  //}
}