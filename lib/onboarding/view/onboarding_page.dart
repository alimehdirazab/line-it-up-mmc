part of 'view.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: const _OnboardingView(),
    );
  }
}

class _OnboardingView extends StatefulWidget {
  const _OnboardingView();

  @override
  State<_OnboardingView> createState() => __OnboardingViewState();
}

class __OnboardingViewState extends State<_OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(context.mWidth * 0.06),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(LineItUpImages.appogo,
                    height: context.mHeight * 0.2),
              ],
            ),
            Flexible(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: context.mWidth,
                  viewportFraction: 0.9,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    context.read<OnboardingCubit>().changePage(index);
                  },
                ),
                items: const [
                  _SlidingPage(
                    title: 'Instant pickup - skip the queue',
                    description:
                        'Receive your order without waiting in line—just place it and pick it up.',
                    image: LineItUpImages.onboarding1,
                  ),
                  _SlidingPage(
                    title: 'Order from home, grab on arrival',
                    description:
                        'Place your order before you leave, and it’ll be ready when you arrive.',
                    image: LineItUpImages.onboarding2,
                  ),
                  _SlidingPage(
                    title: 'Avoid the wait, enjoy the day',
                    description:
                        'Pick up your order at your convenience. No lines, no delays.',
                    image: LineItUpImages.onboarding3,
                  ),
                  _SlidingPage(
                    title: 'Delivery at your doorstep',
                    description:
                        'Enjoy easy online ordering with direct rider delivery to your door.',
                    image: LineItUpImages.onboarding4,
                  ),
                  _SlidingPage(
                    title: 'Track your order in real time',
                    description:
                        'Stay updated with live order tracking and notifications.',
                    image: LineItUpImages.onboarding5,
                  ),
                ],
              ),
            ),

            // Expanding Dots Indicator using BlocBuilder
            BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5,
                      (index) => _buildExpandingDot(index, state.currentPage)),
                );
              },
            ),
            SizedBox(height: context.mHeight * 0.05),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                  title: 'Login',
                  onTap: () {
                    context.pushPage(const SignUpPage());
                    context.read<AppCubit>().disableOnboarding();
                  }),
            ),
            SizedBox(height: context.mHeight * 0.01),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                  title: 'i\'m new, Sign me up',
                  buttonColor: Colors.transparent,
                  fontColor: LineItUpColorTheme().primary,
                  borderWidth: 1,
                  borderColor: LineItUpColorTheme().primary,
                  onTap: () {
                    context.pushPage(const SignUpPage());
                    context.read<AppCubit>().disableOnboarding();
                  }),
            ),
            SizedBox(height: context.mHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'By logging in or registering, you agree to our ',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 12,
                              color:
                                  LineItUpColorTheme().black.withOpacity(0.5),
                            ),
                      ),
                      TextSpan(
                        text: 'Terms of\n',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color:
                                  LineItUpColorTheme().black.withOpacity(0.8),
                            ),
                      ),
                      TextSpan(
                        text: 'services ',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color:
                                  LineItUpColorTheme().black.withOpacity(0.8),
                            ),
                      ),
                      TextSpan(
                        text: 'and ',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 12,
                              color:
                                  LineItUpColorTheme().black.withOpacity(0.5),
                            ),
                      ),
                      TextSpan(
                        text: 'privacy policy',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color:
                                  LineItUpColorTheme().black.withOpacity(0.8),
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to build the expanding dots using Cubit's state
  Widget _buildExpandingDot(int index, int currentPage) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
      height: currentPage == index ? 12.0 : 8.0, // Expanding height
      width: currentPage == index ? 12.0 : 8.0, // Expanding width
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentPage == index
            ? LineItUpColorTheme().primary // Active dot color
            : LineItUpColorTheme().grey20, // Inactive dot color
      ),
    );
  }
}

class _SlidingPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const _SlidingPage({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
          ),
          Text(
            title,
            style: LineItUpTextTheme().heading.copyWith(
                  fontSize: 20,
                ),
          ),
          SizedBox(height: context.mHeight * 0.02),
          Text(
            description,
            textAlign: TextAlign.center,
            style: LineItUpTextTheme().body.copyWith(
                  fontSize: 14,
                  color: LineItUpColorTheme().black.withOpacity(0.5),
                ),
          ),
        ],
      ),
    );
  }
}
