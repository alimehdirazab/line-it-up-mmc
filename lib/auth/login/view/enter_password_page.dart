part of 'view.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const EnterPasswordView();
  }
}

class EnterPasswordView extends StatelessWidget {
  const EnterPasswordView({super.key});

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
                    height: context.mHeight * 0.17),
                IconButton(
                    icon: Icon(LineItUpIcons().cross,
                        color: LineItUpColorTheme().black),
                    onPressed: () {
                      context.pushAndRemoveUntilPage(const OnboardingPage());
                    }),
              ],
            ),
            BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
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
              translate(context, 'enter_password'),
              style: LineItUpTextTheme().heading,
            ),
            SizedBox(height: context.mHeight * 0.04),
            Text(
              translate(context, 'your_password'),
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
                  onTap: () {},
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
                title: translate(context, 'login'),
                onTap: () {
                  context.read<LoginCubit>().state.userType == 0
                      ? context.pushPage(const RootPage())
                      : context.pushPage(const LineSkipperRootPage());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
