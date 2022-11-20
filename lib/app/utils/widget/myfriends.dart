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
                  Text(
                    'My Friends',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 21),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (() => Get.toNamed(Routes.FRIENDS)),
                    child: Text(
                      'more',
                      style:
                          TextStyle(color: AppColors.primaryText, fontSize: 19),
                    ),
                  ),
                  Icon(
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: const Image(
                              image: NetworkImage(
                                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fid%2Ficon%2FPink-Bunga%2F98688&psig=AOvVaw3LVmKzCT5lz9o8BDNIs_fE&ust=1668839106644000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDbh6SMt_sCFQAAAAAdAAAAABAE'),
                            ),
                          ),
                          const Text(
                            'Alicia Jasmin',
                            style: TextStyle(color: AppColors.primaryText),
                          )
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
