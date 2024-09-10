part of 'view.dart';

class ReEnterPasswordPage extends StatelessWidget {
  const ReEnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ReEnterPasswordView();
  }
}

class ReEnterPasswordView extends StatelessWidget {
  const ReEnterPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(LineItUpIcons().backArrow,
                      color: LineItUpColorTheme().black),
                  onPressed: () => context.popPage(),
                ),
                Image.asset(LineItUpImages.appogo,
                    height: context.mHeight * 0.2),
                IconButton(
                    icon: Icon(LineItUpIcons().cross,
                        color: LineItUpColorTheme().black),
                    onPressed: () {
                      context.pushAndRemoveUntilPage(const OnboardingPage());
                    }),
              ],
            ),
            Text(
              translate(context, 're_enter_password'),
              style: LineItUpTextTheme().heading,
            ),
            SizedBox(height: context.mHeight * 0.01),
            Text(
              translate(context, 'use_at_least_8_characters'),
              style: LineItUpTextTheme()
                  .body
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: context.mHeight * 0.04),
            Text(
              translate(context, 're_enter_password'),
              style: LineItUpTextTheme().body.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            const CustomTextField(
              hintText: '********',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: context.mHeight * 0.04),
            Row(
              children: [
                GestureDetector(
                  child: Text(
                    translate(context, 'show_password'),
                    style: LineItUpTextTheme().body.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: LineItUpColorTheme().primary,
                        ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                title: translate(context, 'continue'),
                onTap: () => context.pushPage(const EnterNamePage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
