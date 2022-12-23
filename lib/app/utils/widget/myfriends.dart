import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/app/data/controller/auth_controller.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class MyFriends extends StatelessWidget {
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'My Friends',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 21),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: (() => Get.toNamed(Routes.FRIENDS)),
                    child: const Text(
                      'more',
                      style:
                          TextStyle(color: AppColors.primaryText, fontSize: 19),
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: AppColors.primaryText,
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 400,
                child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                  stream: authCon.streamFriends(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    var myFriends = (snapshot.data!.data()
                        as Map<String, dynamic>)['emailfriends'] as List;

                    return GridView.builder(
                      shrinkWrap: true,
                      itemCount: myFriends.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: context.isPhone ? 2 : 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return StreamBuilder<
                                DocumentSnapshot<Map<String, dynamic>>>(
                            stream: authCon.streamUsers(myFriends[index]),
                            builder: (context, snapshot2) {
                              if (snapshot2.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                    child: CircularProgressIndicator());
                              }

                              var data = snapshot2.data!.data();

                              return Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      image: NetworkImage(data!['photo']),
                                      height: Get.width * 0.35,
                                      width: Get.width * 0.4,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    data['name'],
                                    style: const TextStyle(
                                        color: AppColors.primaryText),
                                  ),
                                ],
                              );
                            });
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
