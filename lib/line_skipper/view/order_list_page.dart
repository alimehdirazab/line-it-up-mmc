part of 'view.dart';

class OrderListPage extends StatelessWidget {
  const OrderListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrderListView();
  }
}

class OrderListView extends StatelessWidget {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: context.mWidth * 0.04),
            child: CircleAvatar(
              backgroundColor: LineItUpColorTheme().grey,
              child: IconButton(
                icon: Icon(
                  LineItUpIcons().notification,
                  color: LineItUpColorTheme().white,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              translate(context, 'order_list'),
              style: LineItUpTextTheme().body.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: context.mHeight * 0.01),
            CustomTextField(
              hintText: translate(context, 'list_one_product_at_a_time'),
            ),
            SizedBox(height: context.mHeight * 0.01),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    LineItUpIcons().add,
                    color: LineItUpColorTheme().black,
                  ),
                  Text(
                    translate(context, 'add_more_items'),
                    style: LineItUpTextTheme().body.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(height: context.mHeight * 0.02),
            Text(
              translate(context, 'other_instruction'),
              style: LineItUpTextTheme().body.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: context.mHeight * 0.01),
            CustomTextField(
              hintText: translate(context, 'write_instructions'),
            ),
            SizedBox(height: context.mHeight * 0.02),
            Text(
              translate(context, 'estimated_order_price'),
              style: LineItUpTextTheme().body.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: context.mHeight * 0.01),
            Text(
              translate(
                  context, 'setting_a_estimated_price_helps_line_skipper'),
              style: LineItUpTextTheme().body.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: LineItUpColorTheme().grey,
                  ),
            ),
            SizedBox(height: context.mHeight * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildChip('\$5-20'),
                _buildChip('\$20-40'),
                _buildChip('\$40-60'),
                _buildChip('\$60-80'),
              ],
            ),
            SizedBox(height: context.mHeight * 0.02),
            Text(
              translate(context, 'payment_method'),
              style: LineItUpTextTheme().body.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: context.mHeight * 0.01),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: LineItUpColorTheme().grey20,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    LineItUpIcons().add,
                    color: LineItUpColorTheme().black,
                  ),
                  SizedBox(width: context.mWidth * 0.02),
                  Text(
                    translate(context, 'add_a_payment_method'),
                    style: LineItUpTextTheme().body.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(height: context.mHeight * 0.02),
            Text(
              translate(context, 'tip_for_rider'),
              style: LineItUpTextTheme().body.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              translate(context, 'your_selected_tip_go_directly_to_your_rider'),
              style: LineItUpTextTheme().body.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: LineItUpColorTheme().grey,
                  ),
            ),
            SizedBox(height: context.mHeight * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildChip('\$5'),
                _buildChip('\$10'),
                _buildChip('\$12'),
                _buildChip('\$15'),
                _buildChip('\$20'),
                _buildChip('\$50'),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                onTap: () {
                  context.pushPage(const FindingLineSkipperPage());
                },
                title: translate(context, 'continue'),
                padding: const EdgeInsets.all(17),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: LineItUpColorTheme().white,
      labelStyle: LineItUpTextTheme().body.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
      labelPadding: const EdgeInsets.symmetric(horizontal: 5),
    );
  }
}
