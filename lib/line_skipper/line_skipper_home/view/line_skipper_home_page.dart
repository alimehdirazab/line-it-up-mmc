part of 'view.dart';

class LineSkipperHomePage extends StatelessWidget {
  const LineSkipperHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LineSkipperHomeView();
  }
}

class LineSkipperHomeView extends StatelessWidget {
  const LineSkipperHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: double.infinity,
                height: context.mHeight * 0.37,
                padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
                decoration: BoxDecoration(
                  color: LineItUpColorTheme().cGreen,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _statusCard(context),
                    const SizedBox(height: 55),
                    Text(
                      'Alex William',
                      style: LineItUpTextTheme().body.copyWith(
                          fontWeight: FontWeight.w700,
                          color: LineItUpColorTheme().white),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Monthly Earning',
                      style: LineItUpTextTheme().body.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: LineItUpColorTheme().white),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '\$1,000.43',
                      style: LineItUpTextTheme().body.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: LineItUpColorTheme().white),
                    ),
                  ],
                ),
              ),
              Image.asset(
                LineItUpImages.lineSkipper,
                width: 136,
                height: 143,
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Daily Stats', style: LineItUpTextTheme().body),
                      Text(
                        'Monday, Sept 16',
                        style: LineItUpTextTheme().body.copyWith(
                            fontSize: 10, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _dailyStateBox(
                        context: context,
                        title: 'Earnings',
                        value: '\$100',
                      ),
                      _dailyStateBox(
                        context: context,
                        title: 'Hours Work',
                        value: '6 hr',
                      ),
                      _dailyStateBox(
                        context: context,
                        title: 'Orders',
                        value: '6',
                      ),
                      _dailyStateBox(
                        context: context,
                        title: 'Tips',
                        value: '\$15',
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Active Order',
                    style: LineItUpTextTheme()
                        .body
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _statusCard(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: LineItUpColorTheme().grey20,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Status:',
                      style: LineItUpTextTheme().body.copyWith(
                            fontWeight: FontWeight.w600,
                          )),
                  const SizedBox(width: 5),
                  Text('Online',
                      style: LineItUpTextTheme().body.copyWith(
                            color: LineItUpColorTheme().green,
                            fontWeight: FontWeight.w600,
                          )),
                ],
              ),
              const SizedBox(height: 5),
              Flexible(
                child: Text(
                  'Switch off button to disable your status',
                  style: LineItUpTextTheme().body.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const Spacer(),
          Switch(
            value: true,
            onChanged: (value) {},
            activeColor: LineItUpColorTheme().green,
            activeTrackColor: LineItUpColorTheme().grey40,
            inactiveTrackColor: LineItUpColorTheme().grey40,
            inactiveThumbColor: LineItUpColorTheme().grey,
          ),
        ],
      ),
    );
  }

  Widget _dailyStateBox({
    required BuildContext context,
    required String title,
    required String value,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: context.mWidth / 4.5,
          height: 83,
          decoration: BoxDecoration(
              color: LineItUpColorTheme().grey20,
              borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Text(
              value,
              style: LineItUpTextTheme()
                  .heading
                  .copyWith(color: LineItUpColorTheme().grey),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: LineItUpTextTheme().body.copyWith(
                fontSize: 12,
              ),
        )
      ],
    );
  }
}
