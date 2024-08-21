import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seatu_ersih_admin/app/pages/features/order_management_page/order_management_controller.dart';

class ButtonSwitch extends GetView<OrderManagementController> {
  const ButtonSwitch({
    super.key,
    // required this.controller,
  });

  // final OrderManagementController controller;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final headingFontSize = screenWidth * 0.045;
    return Obx(
      () {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              controller.isStoreOpen.value
                  ? 'Toko Sedang Buka'
                  : 'Toko Sedang Tutup',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: screenWidth * 0.038,
              ),
            ),
            CupertinoSwitch(
              activeColor: Color(0xff7EC1EB),
              trackColor: Color(0xffEB4335),
              value: controller.isStoreOpen.value,
              onChanged: (value) {
                controller.toggleStoreStatus(value);
              },
            ),
          ],
        );
      },
    );
  }
}