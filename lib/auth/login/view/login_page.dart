part of 'view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginPageView();
  }
}

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

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
              translate(context, 'enter_email_address'),
              style: LineItUpTextTheme().heading,
            ),
            SizedBox(height: context.mHeight * 0.01),
            Text(
              translate(context, 'email_address_sign_in'),
              style: LineItUpTextTheme()
                  .body
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: context.mHeight * 0.04),
            Text(
              translate(context, 'email_address'),
              style: LineItUpTextTheme().body.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            const CustomTextField(
              hintText: 'linitup@gmail.com',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: context.mHeight * 0.04),
            Row(
              children: [
                Text(
                  translate(context, 'dont_have_account'),
                  style: LineItUpTextTheme()
                      .body
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
                ),
                GestureDetector(
                  onTap: () {
                    context.pushPage(const SignUpPage());
                  },
                  child: Text(
                    translate(context, 'sign_up'),
                    style: LineItUpTextTheme().body.copyWith(
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          decorationColor: LineItUpColorTheme().primary,
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
                onTap: () => context.pushPage(const EnterPasswordPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
