import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class MyTask extends StatelessWidget {
  const MyTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
          clipBehavior: Clip.antiAlias,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            Container(
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.cardbg,
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 20,
                          foregroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzY1fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 20,
                          foregroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzY1fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'),
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
                              color: AppColors.primaryText,
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
                        color: AppColors.primaryText,
                      ),
                    )),
                  ),
                  const Text(
                    'Pemrograman mobile',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 20),
                  ),
                  const Text(
                    'Deadline 2 hari lagi',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.cardbg,
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 20,
                          foregroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzY1fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 20,
                          foregroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzY1fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'),
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
                              color: AppColors.primaryText,
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
                        color: AppColors.primaryText,
                      ),
                    )),
                  ),
                  const Text(
                    'Pemrograman mobile',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 20),
                  ),
                  const Text(
                    'Deadline 2 hari lagi',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.cardbg,
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 20,
                          foregroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzY1fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 20,
                          foregroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzY1fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'),
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
                              color: AppColors.primaryText,
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
                          color: AppColors.primaryText,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Pemrograman mobile',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 20),
                  ),
                  const Text(
                    'Deadline 2 hari lagi',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.cardbg,
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 20,
                          foregroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzY1fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 20,
                          foregroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzY1fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'),
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
                              color: AppColors.primaryText,
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
                        color: AppColors.primaryText,
                      ),
                    )),
                  ),
                  const Text(
                    'Pemrograman mobile',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 20),
                  ),
                  const Text(
                    'Deadline 2 hari lagi',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 15),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
