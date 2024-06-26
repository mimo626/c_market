import 'package:flutter/material.dart';

import '../../../core/theme/constant/app_colors.dart';
import '../../../core/theme/constant/app_icons.dart';
import '../../../core/theme/custom/custom_font_weight.dart';
import '../../../core/theme/custom/custom_theme.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 60,
        ),
        child: Column(
          children: [
            Text(
              '''간편하게 로그인하고\nC-Market의\n다양한 서비스를 이용해보세요.''',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(
                    color: Theme.of(context).colorScheme.contentPrimary,
                  )
                  .regular,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            SizedBox(
              height: 48,
              child: TextButton(
                //TODO 로그인 이벤트 호출
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => UserProfile()));
                },
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
                    EdgeInsets.zero,
                  ),
                ),
                child: Image.asset(
                  AppIcons.kakaoLogin,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            ClipOval(
              child: //Image.asset(
                  Image.network(
                //TODO 유저 프로필 이미지
                'https://i.pravatar.cc/150?img=20',
                width: 110,
                height: 110,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              //TODO 유저 이름
              'Jessica',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(
                    color: Colors.white, //AppColors.black,
                  )
                  .regular,
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                //TODO 로그아웃 이벤트 호출
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Theme.of(context).primaryColor,
                  ),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    '로그아웃',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(
                          color: AppColors.white,
                        )
                        .regular,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
