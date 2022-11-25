import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({
    Key? key,
  }) : super(key: key);

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
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 8,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: context.isPhone ? 2 : 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(500),
                            child: const Image(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzY1fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'),
                            ),
                          ),
                          const Text(
                            'Alicia Jasmin',
                            style: TextStyle(color: AppColors.primaryText),
                          ),
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
