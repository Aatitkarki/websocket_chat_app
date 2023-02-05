import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/extensions/extensions.dart';
import 'package:chat_app/core/routes/app_router.gr.dart';
import 'package:chat_app/core/service/web_socket_service.dart';
import 'package:chat_app/core/widgets/app_error_widget.dart';
import 'package:chat_app/core/widgets/custom_button.dart';
import 'package:chat_app/features/chat/controller/chat_controller.dart';
import 'package:chat_app/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/constants.dart';
import '../../../core/themes/theme.dart';
import '../../../core/widgets/textform_field_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRegistered = ref.watch(registerationStateProvider);
    ref.read(homeControllerProvider).getUserDetails();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat App"),
      ),
      body: Column(
        children: [
          if (isRegistered)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "${AppStrings.registeredAs} ${ref.watch(homeControllerProvider).userModel!.name}"),
                  10.verticalSpace,
                  Text(
                    AppStrings.activeUsers,
                    style: AppStyles.text18PxBold,
                  ),
                  const ActiveUserListBuilderWidget(),
                ],
              ),
            )
          else ...[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
              child: const Text(AppStrings.initialUserGuide),
            ),
            UserDetailProviderWidget(),
          ]
        ],
      ),
    );
  }
}

class ActiveUserListBuilderWidget extends ConsumerWidget {
  const ActiveUserListBuilderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeUsers = ref.watch(activeUsersPovider);
    // ref.read(allChatsProvider);
    return activeUsers.when(
      loading: () => const Text('No active users found'),
      error: (error, stackTrace) => Text(error.toString()),
      data: (users) {
        // Display all the users in a scrollable list view.
        return users.isEmpty
            ? const AppErrorWidget(message: 'No Active Users to chat')
            : ListView.builder(
                reverse: true,
                shrinkWrap: true,
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final userModel = users[index];
                  return GestureDetector(
                    onTap: () {
                      context.router.push(ChatRoute(
                        receiverModel: userModel,
                      ));
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 10.w),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25.r,
                              child: Text(
                                userModel.name[0].toUpperCase(),
                                style: AppStyles.text18PxBold,
                              ),
                            ),
                            10.horizontalSpace,
                            Text(
                              userModel.name,
                              style: AppStyles.text13PxBold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
      },
    );
  }
}

class UserDetailProviderWidget extends ConsumerWidget {
  UserDetailProviderWidget({
    super.key,
  });

  final TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      child: Row(
        children: [
          Expanded(
            child: TextFormFieldWidget(
              controller: userNameController,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              borderColor: AppColors.textHint,
              inputType: TextInputType.multiline,
              inputAction: TextInputAction.newline,
              maxLines: 4,
              minLines: 1,
              label: 'Aa',
              onChanged: (value) {},
              filled: false,
              onSuffixPressed: () {},
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          CustomButton(
              label: "Connect",
              onPressed: () {
                if (userNameController.text.trim() == '') {
                  context.showSnackBar(
                      message: "Please provide username.", error: true);
                } else {
                  ref
                      .read(homeControllerProvider)
                      .setUserDetails(userNameController.text);
                }
              }),
        ],
      ),
    );
  }
}
