import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? const Expanded(
                    flex: 2,
                    child: SideBar(),
                  )
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  !context.isPhone
                      ? const header()
                      : Container(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _drawerKey.currentState!.openDrawer();
                                },
                                icon: const Icon(
                                  Iconsax.menu,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Task Management',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.primaryText),
                                  ),
                                  Text(
                                    'Manage Task made easy with friends',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.primaryText),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.notifications,
                                color: AppColors.primaryText,
                                size: 30,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 25,
                                  foregroundImage: NetworkImage(
                                      'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2Fmusim-semi-bunga-alam%2F57269&psig=AOvVaw35tObMScokij01BdanruZG&ust=1668691587631000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCLjLw97msvsCFQAAAAAdAAAAABAE'),
                                ),
                              ),
                            ],
                          ),
                        ),
                  // content / isi page / screen
                  Expanded(
                    child: Container(
                      padding: !context.isPhone
                          ? const EdgeInsets.all(15)
                          : const EdgeInsets.all(10),
                      margin: !context.isPhone
                          ? const EdgeInsets.all(10)
                          : const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(30),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Get.height * 0.39,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'My Task',
                                  style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 21),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),

                                // My Task
                                SizedBox(
                                  height: 160,
                                  child: ListView(
                                      clipBehavior: Clip.antiAlias,
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      children: [
                                        Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: AppColors.cardbg,
                                          ),
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    child: const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.amber,
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://www.google.com/search?q=foto+dari+wikipedia&client=firefox-b-d&sxsrf=ALiCzsbFY3IMzusPuQ06YjeBQtGfO3cEaQ:1668775649382&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjv7Kne4bf7AhXs7nMBHdVODAUQ_AUoAXoECAEQAw&biw=1280&bih=559&dpr=1.5#imgrc=mzQzNtQYWmYnfM'),
                                                    ),
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    child: const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.amber,
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2FPink-Bunga%2F98688&psig=AOvVaw3LVmKzCT5lz9o8BDNIs_fE&ust=1668839106644000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDbh6SMt_sCFQAAAAAdAAAAABAE'),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 25,
                                                    width: 50,
                                                    color: AppColors.primaryBg,
                                                    child: const Center(
                                                      child: Text(
                                                        '100%',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                color: AppColors.primaryBg,
                                                child: const Center(
                                                    child: Text(
                                                  '10/10 task',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                  ),
                                                )),
                                              ),
                                              const Text(
                                                'Pemrograman mobile',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 20),
                                              ),
                                              const Text(
                                                'Deadline 2 hari lagi',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: AppColors.cardbg,
                                          ),
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    child: const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.amber,
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2FPink-Bunga%2F98688&psig=AOvVaw3LVmKzCT5lz9o8BDNIs_fE&ust=1668839106644000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDbh6SMt_sCFQAAAAAdAAAAABAE'),
                                                    ),
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    child: const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.amber,
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2FPink-Bunga%2F98688&psig=AOvVaw3LVmKzCT5lz9o8BDNIs_fE&ust=1668839106644000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDbh6SMt_sCFQAAAAAdAAAAABAE'),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 25,
                                                    width: 80,
                                                    color: AppColors.primaryBg,
                                                    child: const Center(
                                                      child: Text(
                                                        '100%',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                color: AppColors.primaryBg,
                                                child: const Center(
                                                    child: Text(
                                                  '10/10 task',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                  ),
                                                )),
                                              ),
                                              const Text(
                                                'Pemrograman mobile',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 20),
                                              ),
                                              const Text(
                                                'Deadline 2 hari lagi',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: AppColors.cardbg,
                                          ),
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    child: const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.amber,
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2FPink-Bunga%2F98688&psig=AOvVaw3LVmKzCT5lz9o8BDNIs_fE&ust=1668839106644000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDbh6SMt_sCFQAAAAAdAAAAABAE'),
                                                    ),
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    child: const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.amber,
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2FPink-Bunga%2F98688&psig=AOvVaw3LVmKzCT5lz9o8BDNIs_fE&ust=1668839106644000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDbh6SMt_sCFQAAAAAdAAAAABAE'),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 25,
                                                    width: 80,
                                                    color: AppColors.primaryBg,
                                                    child: const Center(
                                                      child: Text(
                                                        '100%',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                color: AppColors.primaryBg,
                                                child: const Center(
                                                  child: Text(
                                                    '10/10 task',
                                                    style: TextStyle(
                                                      color:
                                                          AppColors.primaryText,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Text(
                                                'Pemrograman mobile',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 20),
                                              ),
                                              const Text(
                                                'Deadline 2 hari lagi',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: AppColors.cardbg,
                                          ),
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    child: const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.amber,
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2FPink-Bunga%2F98688&psig=AOvVaw3LVmKzCT5lz9o8BDNIs_fE&ust=1668839106644000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDbh6SMt_sCFQAAAAAdAAAAABAE'),
                                                    ),
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    child: const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.amber,
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2FPink-Bunga%2F98688&psig=AOvVaw3LVmKzCT5lz9o8BDNIs_fE&ust=1668839106644000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDbh6SMt_sCFQAAAAAdAAAAABAE'),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 25,
                                                    width: 80,
                                                    color: AppColors.primaryBg,
                                                    child: const Center(
                                                      child: Text(
                                                        '100%',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                color: AppColors.primaryBg,
                                                child: const Center(
                                                    child: Text(
                                                  '10/10 task',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                  ),
                                                )),
                                              ),
                                              const Text(
                                                'Pemrograman mobile',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 20),
                                              ),
                                              const Text(
                                                'Deadline 2 hari lagi',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Upcoming Task',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 21),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              SizedBox(
                                                height: 400,
                                                child: ListView(
                                                  clipBehavior: Clip.antiAlias,
                                                  //scrollDirection: Axis.vertical,
                                                  shrinkWrap: true,
                                                  children: [
                                                    SizedBox(
                                                      height: 200,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color:
                                                              AppColors.cardbg,
                                                        ),
                                                        margin:
                                                            EdgeInsets.all(10),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              25),
                                                                  child:
                                                                      const CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .amber,
                                                                    radius: 20,
                                                                    foregroundImage:
                                                                        NetworkImage(
                                                                            'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2FPink-Bunga%2F98688&psig=AOvVaw3LVmKzCT5lz9o8BDNIs_fE&ust=1668839106644000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDbh6SMt_sCFQAAAAAdAAAAABAE'),
                                                                  ),
                                                                ),
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              25),
                                                                  child:
                                                                      const CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .amber,
                                                                    radius: 20,
                                                                    foregroundImage:
                                                                        NetworkImage(
                                                                            "https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2FPink-Bunga%2F98688&psig=AOvVaw3LVmKzCT5lz9o8BDNIs_fE&ust=1668839106644000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDbh6SMt_sCFQAAAAAdAAAAABAE"),
                                                                  ),
                                                                ),
                                                                const Spacer(),
                                                                Container(
                                                                  height: 25,
                                                                  width: 50,
                                                                  color: AppColors
                                                                      .primaryBg,
                                                                  child:
                                                                      const Center(
                                                                    child: Text(
                                                                      '100%',
                                                                      style:
                                                                          TextStyle(
                                                                        color: AppColors
                                                                            .primaryText,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            const Spacer(),
                                                            Container(
                                                              height: 25,
                                                              width: 80,
                                                              color: AppColors
                                                                  .primaryBg,
                                                              child:
                                                                  const Center(
                                                                      child:
                                                                          Text(
                                                                '10/10 task',
                                                                style:
                                                                    TextStyle(
                                                                  color: AppColors
                                                                      .primaryText,
                                                                ),
                                                              )),
                                                            ),
                                                            const Text(
                                                              'Pemrograman mobile',
                                                              style: TextStyle(
                                                                  color: AppColors
                                                                      .primaryText,
                                                                  fontSize: 20),
                                                            ),
                                                            const Text(
                                                              'Deadline 2 hari lagi',
                                                              style: TextStyle(
                                                                  color: AppColors
                                                                      .primaryText,
                                                                  fontSize: 15),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                const Text(
                                                  'My Friends',
                                                  style: TextStyle(
                                                      color:
                                                          AppColors.primaryText,
                                                      fontSize: 21),
                                                ),
                                                const Text(
                                                  'More',
                                                  style: TextStyle(
                                                      color:
                                                          AppColors.primaryText,
                                                      fontSize: 21),
                                                ),
                                                const Icon(
                                                  Ionicons.arrow_forward,
                                                  color: AppColors.primaryText,
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
