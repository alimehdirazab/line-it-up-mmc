part of 'view.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OtpView();
  }
}

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final int _resendTimerSeconds = 60;
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
            Text('Enter OTP', style: LineItUpTextTheme().heading),
            SizedBox(height: context.mHeight * 0.01),
            Text(
                '6 digits OTP code has been sent to your entered email address',
                style: LineItUpTextTheme()
                    .body
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w300)),
            SizedBox(height: context.mHeight * 0.04),
            Text(
              'OTP',
              style: LineItUpTextTheme().body.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            CustomTextField(
              hintText: '.  .  .  .  .  .',
              keyboardType: TextInputType.emailAddress,
              suffixIcon: Text(
                '0:$_resendTimerSeconds',
                style: LineItUpTextTheme()
                    .body
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: context.mHeight * 0.04),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                title: 'Continue',
                onTap: () => context.pushPage(const CreatePasswordPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
