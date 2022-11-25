import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzY1fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'),
                    ),
                  ),
                ),
                //SizedBox(
                //width: 20,
                //),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Alicia Jasmine',
                        style: TextStyle(
                            color: AppColors.primaryText, fontSize: 30),
                      ),
                      Text(
                        'alicia@gmail.com',
                        style: TextStyle(
                            color: AppColors.primaryText, fontSize: 21),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                children: const [
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 90,
                      foregroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzY1fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Alicia Jasmine',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 30),
                  ),
                  Text(
                    'alicia@gmail.com',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 21),
                  ),
                ],
              ),
            ),
    );
  }
}
