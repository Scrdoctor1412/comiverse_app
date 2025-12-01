import 'dart:ui';

import 'package:comiverse_app/core/gen/assets.gen.dart';
import 'package:comiverse_app/core/theme/app_pallete.dart';
import 'package:comiverse_app/screens/auth/register/register_screen_viewmodel.dart';
import 'package:comiverse_app/widgets/app_logo.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RegisterScreen extends GetView<RegisterScreenViewmodel> {
  static const String routeName = '/register';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _body() {
      ///Widget displaying the auth sign in/signup form
      Widget __formCard() {
        ///Widget building auth text field
        Widget ___buildTextField({
          String? id,
          required IconData icon,
          required String hint,
          bool isPassword = false,
          bool isPasswordVisible = false,
          TextEditingController? controller,
          VoidCallback? onTogglePassword,
        }) {
          return GetBuilder<RegisterScreenViewmodel>(
            id: id,
            builder: (context) {
              return Container(
                decoration: BoxDecoration(
                  color: AppPallete.background,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller,
                  obscureText: isPassword && !isPasswordVisible,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppPallete.textMain,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      icon,
                      color: Colors.grey.shade400,
                      size: 20,
                    ),
                    suffixIcon: isPassword
                        ? IconButton(
                            icon: Icon(
                              isPasswordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey.shade400,
                              size: 20,
                            ),
                            onPressed: onTogglePassword,
                          )
                        : null,
                    hintText: hint,
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              );
            },
          );
        }

        ///Widget building auth label
        Widget ___buildLabel(String text) {
          return Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: AppPallete.textSecondary,
              ),
            ),
          );
        }

        ///Widget building auth login button
        Widget ___buildLoginButton() {
          return InkWell(
            onTap: () {},
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                gradient: AppPallete.primaryGradient,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: AppPallete.primaryLight.withOpacity(0.4),
                    blurRadius: 16,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Đăng ký",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                ],
              ),
            ),
          );
        }

        //Widget building text with 2 dash aside
        Widget ___buildDashText(String text) {
          return Container(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(child: Divider()),
                const SizedBox(width: 5),
                Text(
                  // "Chào mừng bạn quay trở lại!",
                  text,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppPallete.textSecondary.withValues(alpha: 0.5),
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(child: Divider()),
              ],
            ),
          );
        }

        //Widget build social login buttons
        Widget ___buildSocialLogin() {
          Widget ____buildItemSocial({
            String? assetPath,
            String? assetSvgPath,
          }) {
            if (assetPath != null) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 15,
                ),
                child: SizedBox(
                  width: 25,
                  height: 25,
                  child: Image.asset(assetPath),
                ),
              );
            } else if (assetSvgPath != null) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 15,
                ),
                child: SizedBox(
                  width: 25,
                  height: 25,
                  child: SvgPicture.asset(assetSvgPath),
                ),
              );
            }
            return SizedBox.shrink();
          }

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ____buildItemSocial(assetSvgPath: Assets.icons.googleIcon),
              ____buildItemSocial(assetPath: Assets.icons.facebookIcon.path),
              ____buildItemSocial(assetSvgPath: Assets.icons.appleIcon),
            ],
          );
        }

        return Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.8),
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: Colors.white),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 24,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Tạo tài khoản",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppPallete.textMain,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Tham gia cộng đồng truyện tranh ngay",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppPallete.textSecondary.withValues(alpha: 0.5),
                  ),
                ),
              ),
              const SizedBox(height: 28),
              ___buildLabel("Tên hiển thị"),
              const SizedBox(height: 8),
              ___buildTextField(
                id: RegisterScreenRebuildId.nameField,
                hint: "Davy Jones",
                icon: Icons.person,
                controller: controller.nameController,
              ),
              const SizedBox(height: 16),
              ___buildLabel("Email"),
              const SizedBox(height: 8),
              ___buildTextField(
                id: RegisterScreenRebuildId.emailField,
                hint: "example@gmail.com",
                icon: Icons.email,
                controller: controller.emailController,
              ),
              const SizedBox(height: 16),
              ___buildLabel("Mật khẩu"),
              const SizedBox(height: 8),
              ___buildTextField(
                id: RegisterScreenRebuildId.passwordField,
                hint: "*****",
                icon: Icons.lock,
                isPassword: true,
                controller: controller.passwordController,
                isPasswordVisible: controller.isPasswordVisible,
                onTogglePassword: () {
                  controller.onTapTogglePassword();
                },
              ),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: TextButton(
              //     onPressed: () {},
              //     child: const Text(
              //       "Quên mật khẩu?",
              //       style: TextStyle(
              //         color: AppPallete.primaryMain,
              //         fontWeight: FontWeight.bold,
              //         fontSize: 12,
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 16),
              ___buildLoginButton(),
              const SizedBox(height: 25),
              ___buildDashText("Hoặc đăng ký với"),
              const SizedBox(height: 20),
              ___buildSocialLogin(),
              const SizedBox(height: 20),
              Align(
                alignment: AlignmentGeometry.center,
                child: RichText(
                  text: TextSpan(
                    text: "Đã có tài khoản? ",
                    style: TextStyle(
                      color: AppPallete.textSecondary.withValues(alpha: 0.5),
                      // fontSize: 12,
                    ),
                    children: [
                      TextSpan(
                        text: "Đăng nhập",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // print("Pressing sign up");
                            controller.onTapToLoginScreen();
                          },
                        style: TextStyle(
                          color: AppPallete.primaryMain,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget __buildBackGroundBlobs() {
        return Stack(
          children: [
            // Background Blobs (Giả lập hiệu ứng mờ)
            Positioned(
              top: -100,
              left: -100,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: AppPallete.primaryLight.withValues(alpha: 0.2),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 180,
              right: -50,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: AppPallete.primaryDark.withValues(alpha: 0.2),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 580,
              left: -100,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: AppPallete.primaryLight.withValues(alpha: 0.2),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        );
      }

      Widget __mainContent() {
        return Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                AppLogo.createAppLogo(),
                const SizedBox(height: 16),
                const Text(
                  "ComiVerse",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppPallete.textMain,
                    letterSpacing: -1,
                  ),
                ),
                const Text(
                  "Cổng vào thế giới truyện tranh",
                  style: TextStyle(
                    color: AppPallete.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 40),
                __formCard(),
              ],
            ),
          ),
        );
      }

      return Stack(
        children: [
          __buildBackGroundBlobs(),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 100,
              sigmaY: 100,
            ),
            child: __mainContent(),
          ),
        ],
      );
    }

    return Scaffold(
      body: _body(),
    );
  }
}
