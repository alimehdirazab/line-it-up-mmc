part of 'view.dart';

class ReEnterPasswordPage extends StatelessWidget {
  const ReEnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreatePasswordView();
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
            Text('Re-enter password', style: LineItUpTextTheme().heading),
            SizedBox(height: context.mHeight * 0.01),
            Text(
                'Use at least 8 characters, a combination of number and letters',
                style: LineItUpTextTheme()
                    .body
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w300)),
            SizedBox(height: context.mHeight * 0.04),
            Text(
              'Enter password',
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
                Text(
                  ' Show password',
                  style: LineItUpTextTheme().body.copyWith(
                        fontSize: 14,
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
