import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              const Text(
                'Upcoming Task',
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 21),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 400,
                child: ListView(
                    clipBehavior: Clip.antiAlias,
                    //scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Container(
                        height: 150,
                        //width: 400,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(
                                  20),
                          color: AppColors.cardbg,
                        ),
                        margin:
                            const EdgeInsets.all(
                                10),
                        padding:
                            const EdgeInsets.all(
                                10),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
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
                                            'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2FPink-Bunga%2F98688&psig=AOvVaw3LVmKzCT5lz9o8BDNIs_fE&ust=1668839106644000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDbh6SMt_sCFQAAAAAdAAAAABAE'),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  height: 25,
                                  width: 80,
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
                              child: const Center(
                                  child: Text(
                                '10/10 task',
                                style: TextStyle(
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
                      Container(
                        height: 150,
                        //width: 400,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(
                                  20),
                          color: AppColors.cardbg,
                        ),
                        margin:
                            const EdgeInsets.all(
                                10),
                        padding:
                            const EdgeInsets.all(
                                10),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
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
                                            'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2FPink-Bunga%2F98688&psig=AOvVaw3LVmKzCT5lz9o8BDNIs_fE&ust=1668839106644000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDbh6SMt_sCFQAAAAAdAAAAABAE'),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  height: 25,
                                  width: 80,
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
                              child: const Center(
                                  child: Text(
                                '10/10 task',
                                style: TextStyle(
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
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
