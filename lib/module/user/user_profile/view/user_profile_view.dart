import 'package:flutter/material.dart';
import 'package:realm_app/core.dart';
import 'package:realm_app/model/model.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({Key? key}) : super(key: key);

  Widget build(context, UserProfileController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserProfile"),
        actions: [
          IconButton(
            onPressed: () => controller.logout(),
            icon: Icon(
              Icons.logout,
              size: 24.0,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: RealmListView<UserProfile>(
        stream: UserProfileService.instance
            .snapshot(query: "email == '${userProfile!.email}'"),
        itemBuilder: (item, index) {
          controller.current = item;
          return Form(
            key: controller.formKey,
            child: Column(
              children: [
                QTextField(
                  label: "Name",
                  validator: Validator.required,
                  value: item.name ?? "OW",
                  onChanged: (value) {
                    controller.name = value;
                  },
                ),
                QTextField(
                  label: "Email",
                  validator: Validator.email,
                  suffixIcon: Icons.email,
                  value: item.email,
                  enabled: false,
                  onChanged: (value) {},
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () => controller.save(),
      ),
    );
  }

  @override
  State<UserProfileView> createState() => UserProfileController();
}
