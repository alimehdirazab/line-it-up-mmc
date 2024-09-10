part of 'view.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUpView();
  }
}

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Image.asset(LineItUpImages.appogo,
                    height: context.mHeight * 0.2),
                IconButton(
                  icon: Icon(LineItUpIcons().cross,
                      color: LineItUpColorTheme().black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            Text('Enter your email address',
                style: LineItUpTextTheme().heading),
            SizedBox(height: context.mHeight * 0.01),
            Text('We need your email address for account creation',
                style: LineItUpTextTheme()
                    .body
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w300)),
            SizedBox(height: context.mHeight * 0.04),
            Text(
              'E-mail address',
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
                  'Have an account?',
                  style: LineItUpTextTheme()
                      .body
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
                ),
                Text(
                  ' log in',
                  style: LineItUpTextTheme().body.copyWith(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationColor: LineItUpColorTheme().primary,
                        fontWeight: FontWeight.bold,
                        color: LineItUpColorTheme().primary,
                      ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                title: 'Continue',
                onTap: () => context.pushPage(const OtpPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
