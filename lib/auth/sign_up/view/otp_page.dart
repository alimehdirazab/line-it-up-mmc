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
                  onPressed: () => context.popPage(),
                ),
                Image.asset(LineItUpImages.appogo,
                    height: context.mHeight * 0.15),
                IconButton(
                    icon: Icon(LineItUpIcons().cross,
                        color: LineItUpColorTheme().black),
                    onPressed: () {
                      context.pushAndRemoveUntilPage(const OnboardingPage());
                    }),
              ],
            ),
            BlocBuilder<SignUPCubit, SignUpState>(builder: (context, state) {
              return state.userType == 0
                  ? Row(
                      children: [
                        Icon(LineItUpIcons().user, size: 16),
                        const SizedBox(width: 5),
                        Text(
                          translate(context, 'user'),
                          style: LineItUpTextTheme().body.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: LineItUpColorTheme().primary,
                              ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        Icon(LineItUpIcons().lineSkipperCross, size: 16),
                        const SizedBox(width: 5),
                        Text(
                          translate(context, 'line_skipper'),
                          style: LineItUpTextTheme().body.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: LineItUpColorTheme().primary,
                              ),
                        ),
                      ],
                    );
            }),
            const SizedBox(height: 10),
            Text(
              translate(context, 'enter_otp'),
              style: LineItUpTextTheme().heading,
            ),
            SizedBox(height: context.mHeight * 0.01),
            Text(
              translate(context, 'otp_code_sent'),
              style: LineItUpTextTheme()
                  .body
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: context.mHeight * 0.04),
            Text(
              translate(context, 'otp'),
              style: LineItUpTextTheme().body.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            CustomTextField(
              hintText: '.  .  .  .  .  .',
              keyboardType: TextInputType.number,
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
                title: translate(context, 'continue'),
                onTap: () {
                  // Navigate to the OTP page with the SignInCubit instance
                  context.pushPage(BlocProvider.value(
                    value: context.read<SignUPCubit>(),
                    child: const CreatePasswordPage(),
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
