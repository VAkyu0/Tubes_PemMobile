import 'package:flutter/material.dart';
import 'package:realm_app/core.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onLongPress: () async {
                  showLoading();
                  await AuthService.deleteTemporaryData();
                  hideLoading();
                },
                child: Image.asset(
                  "assets/icon/icon.png",
                  height: 160,
                ),
              ),
              QTextField(
                label: "Email",
                validator: Validator.email,
                suffixIcon: Icons.email,
                value: controller.email,
                onChanged: (value) {
                  controller.email = value;
                },
                // Remove the 'labelStyle' parameter
              ),
              QTextField(
                label: "Password",
                obscure: true,
                validator: Validator.required,
                suffixIcon: Icons.password,
                value: controller.password,
                onChanged: (value) {
                  controller.password = value;
                },
                // Remove the 'labelStyle' parameter
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: QButton(
                  label: "Login",
                  onPressed: () => controller.login(),
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        controller.email = "admin@demo.com";
                        controller.password = "123456";
                        controller.login();
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Login\nadmin@demo.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        controller.email = "user@demo.com";
                        controller.password = "123456";
                        controller.login();
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Login\nuser@demo.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
