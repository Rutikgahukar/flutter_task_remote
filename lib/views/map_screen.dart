import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resources/my_colors.dart';
import '../resources/my_assets.dart';
import '../viewmodels/map_controller.dart';

class MapScreen extends StatelessWidget {
  final MapController controller = Get.put(MapController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Image(
              image: map_background,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 50,
            left: 16,
            child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: IconButton(
                  color: MyColor.black,
                  iconSize: screenWidth * 0.045,
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed:() {},
                ),
              ),
            ),
          ),
          Positioned(
              top: screenHeight * 0.16,
              left: screenWidth * 0.18,
              child: Image(
                image:profile_route_icon_Logo ,
                height: screenHeight * 0.060,
              )
          ), Positioned(
              top: screenHeight * 0.20,
              left: screenWidth * 0.18,
              child: Image(
                image:oval_icon_Logo ,
                height: screenHeight * 0.060,
              )
          ),
          Positioned(
              top: screenHeight * 0.20,
              left: screenWidth * 0.18,
              child: Image(
                image:oval_CenterPoint_Logo ,
                height: screenHeight * 0.050,
              )
          ),
          Positioned(
            top: screenHeight * 0.030,
            left: screenWidth * 0.1,
            child: SizedBox(
              width: screenWidth * 0.8,
              height: screenHeight * 0.4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image(
                    image: route_Path_Logo,),
                  Positioned(
                    top: screenHeight * 0.14,
                    right: screenWidth * 0.07,
                    child: Image(
                      image:route_Car_Logo ,
                    )
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.025,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
                border: Border.all(
                  color: MyColor.cardBorderColor,
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: screenWidth * 0.1,
                                height: screenWidth * 0.1,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: driver_Logo,
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: screenHeight * 0.6,
                                  right: screenWidth * 0.07,
                                  child: Image(
                                    image: rating_Logo,
                                    height: screenWidth * 0.050,
                                  )
                              ),
                            ],
                          ),

                          SizedBox(width: screenWidth * 0.02),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(() => Text(
                                controller.userName.value,
                                style: TextStyle(
                                  fontSize: screenWidth * 0.036,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              )),
                              SizedBox(height: 3),
                              Obx(() => Text(
                                "He has completed ${controller.totalTrips.value} trips",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.028,
                                  color:MyColor.cardTextColor,
                                ),
                              )),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: screenWidth * 0.12,
                            height: screenWidth * 0.12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColor.white,
                            ),
                            child: Image(
                              image: chat_Logo,
                            ),
                          ),
                          const SizedBox(width: 1),
                          Container(
                            width: screenWidth * 0.12,
                            height: screenWidth * 0.12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColor.white,
                            ),
                            child: Image(
                              image: Phone_Logo,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: screenWidth * 0.1,
                            height: screenWidth * 0.1,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: car_Logo,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(() => Text(
                                controller.carDetails.value,
                                style: TextStyle(
                                  fontSize: screenWidth * 0.036,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              )),
                              SizedBox(height: 3),
                              Obx(() => Text(
                                "No, ${controller.carNODetails.value} -  Color, White ",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.028,
                                  color:MyColor.cardTextColor,
                                ),
                              )),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColor.BtnGreenColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04,
                            vertical: screenHeight * 0.010,
                          ),
                        ),
                        child: Obx(() => Text(
                          "EAT ${controller.estimatedTime.value}",
                          style: TextStyle(
                            fontSize: screenWidth * 0.038,
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.circle, color: Colors.green, size: 10),
                          Container(
                            height: screenHeight * 0.04,
                            width: 2,
                            color: Colors.grey.shade400,
                          ),
                          Icon(Icons.circle, color: Colors.orange, size: 10),
                        ],
                      ),
                      SizedBox(width: screenWidth * 0.03),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(() => Text(
                              controller.pickupLocation.value,
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                            Divider(
                              color: Colors.grey.shade300,
                              thickness: 1,
                            ),
                            Obx(() => Text(
                              controller.dropLocation.value,
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                          child: Icon(Icons.access_time, color: Colors.grey.shade500)),
                    ],
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.016,
                        ),
                      ),
                      child: Text(
                        "UPDATE RIDE",
                        style: TextStyle(
                          color: MyColor.white,
                          fontSize: screenWidth * 0.040,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
