part of 'view.dart';

class FindingOrderPage extends StatelessWidget {
  const FindingOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FindingOrderView();
  }
}

class FindingOrderView extends StatelessWidget {
  const FindingOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: context.mHeight * 0.05,
            horizontal: context.mWidth * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(LineItUpIcons().cross,
                      color: LineItUpColorTheme().black),
                  onPressed: () => Navigator.pop(context),
                ),
                CircleIconButton(
                  icon: LineItUpIcons().share,
                  onPressed: () {},
                  backgroundColor: LineItUpColorTheme().grey20,
                ),
              ],
            ),
            SizedBox(height: context.mHeight * 0.03),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      translate(context, 'confirm_order'),
                      style: LineItUpTextTheme().heading,
                    ),
                    SizedBox(height: context.mHeight * 0.02),
                    Row(
                      children: [
                        Text(translate(context, 'estimated_time_remaining'),
                            style: LineItUpTextTheme().body.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: LineItUpColorTheme().grey,
                                )),
                        Text(' 35:59 min',
                            style: LineItUpTextTheme().body.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: LineItUpColorTheme().grey,
                                )),
                      ],
                    ),
                    SizedBox(height: context.mHeight * 0.02),
                    const TimeProgressBar(currentIndex: 1),
                    SizedBox(height: context.mHeight * 0.02),
                    Row(
                      children: [
                        Text(translate(context, 'arrive_by'),
                            style: LineItUpTextTheme().body.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: LineItUpColorTheme().grey,
                                )),
                        Text(' 6:30 PM',
                            style: LineItUpTextTheme().body.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: LineItUpColorTheme().grey,
                                )),
                      ],
                    ),
                    SizedBox(height: context.mHeight * 0.03),
                    Text(translate(context, 'order_details'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('Cost Less Food Company',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('Arizona Drinks - 22 Oz',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('Guerrero Riquisima Flour Tortillas',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('Cranberry Juice - 3 Liter',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.03),
                    Text(translate(context, 'order_instruction'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('None',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.03),
                    Text(translate(context, 'estimated_order_price'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('\$20-40',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.03),
                    Text(translate(context, 'payment_method'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Row(
                      children: [
                        Image.asset(LineItUpImages.masterCard),
                        SizedBox(width: context.mWidth * 0.02),
                        Text('Master card',
                            style: LineItUpTextTheme().body.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: LineItUpColorTheme().grey,
                                )),
                      ],
                    ),
                    SizedBox(height: context.mHeight * 0.03),
                    Text(translate(context, 'tip_for_rider'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(height: context.mHeight * 0.01),
                    Text('\$5',
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LineItUpColorTheme().grey,
                            )),
                    SizedBox(height: context.mHeight * 0.02),
                    const Divider(),
                    SizedBox(height: context.mHeight * 0.02),
                    Text(translate(context, 'line_skipper_details'),
                        style: LineItUpTextTheme().body.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(height: context.mHeight * 0.02),
                    Row(
                      children: [
                        Image.asset(LineItUpImages.manAvatar,
                            width: 40, height: 41),
                        SizedBox(width: context.mWidth * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sam Karen',
                                style: LineItUpTextTheme().body.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '4.5',
                                  style: LineItUpTextTheme().body.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: LineItUpColorTheme().grey,
                                      ),
                                ),
                                SizedBox(width: context.mWidth * 0.02),
                                Icon(
                                  LineItUpIcons().star,
                                  color: LineItUpColorTheme().yellow,
                                  size: 18,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: context.mHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleIconButton(
                          icon: LineItUpIcons().phone1,
                          onPressed: () {},
                          backgroundColor: LineItUpColorTheme().grey20,
                          radius: 27,
                        ),
                        CircleIconButton(
                          icon: LineItUpIcons().message,
                          onPressed: () {},
                          backgroundColor: LineItUpColorTheme().grey20,
                          radius: 27,
                        ),
                        Container(
                          width: context.mWidth * 0.6,
                          padding: const EdgeInsets.only(left: 12),
                          decoration: BoxDecoration(
                            color: LineItUpColorTheme().grey20,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: CustomTextField(
                            hintText: translate(context, 'send_a_message'),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                LineItUpIcons().send,
                                color: LineItUpColorTheme().black,
                                size: 22,
                              ),
                            ),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: context.mHeight * 0.1,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          child: CustomElevatedButton(
            title: translate(context, 'scan_qr_to_pay'),
            onTap: () {
              context.pushPage(const ScanQrPage());
            },
          ),
        ),
      ),
    );
  }
}
