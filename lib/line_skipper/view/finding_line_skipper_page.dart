part of 'view.dart';

class FindingLineSkipperPage extends StatelessWidget {
  const FindingLineSkipperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FindingLineSkipperPageView();
  }
}

class FindingLineSkipperPageView extends StatelessWidget {
  const FindingLineSkipperPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GoogleMap(
            myLocationButtonEnabled: false,
            initialCameraPosition: CameraPosition(
              target: LatLng(37.42796133580664, -122.085749655962),
              zoom: 14.4746,
            ),
            mapType: MapType.normal,
            zoomControlsEnabled: false,
          ),
          Positioned(
            bottom: context.mHeight * 0.45,
            left: context.mWidth * 0.05,
            child: _buildLocationCard(
              context,
              translate(context, 'from'),
              '12348 street, LA',
              LineItUpColorTheme().red,
            ),
          ),
          Positioned(
            bottom: context.mHeight * 0.38,
            left: context.mWidth * 0.05,
            child: _buildLocationCard(
              context,
              translate(context, 'pick'),
              'Cost Less Foods',
              LineItUpColorTheme().green,
            ),
          ),
          Positioned(
              bottom: context.mHeight * 0.41,
              left: context.mWidth * 0.80,
              child: CircleAvatar(
                radius: 22,
                backgroundColor: LineItUpColorTheme().white,
                child: IconButton(
                  icon: Icon(
                    LineItUpIcons().cross,
                    color: LineItUpColorTheme().black,
                  ),
                  onPressed: () {
                    context.popPage();
                  },
                ),
              )),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(context.mWidth * 0.05),
        width: double.infinity,
        height: context.mHeight * 0.40,
        decoration: BoxDecoration(
          color: LineItUpColorTheme().white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  translate(context, 'line_skipper_reaching_in'),
                  style: LineItUpTextTheme()
                      .body
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  '3:45 min',
                  style: LineItUpTextTheme()
                      .body
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: context.mHeight * 0.02),
            GeneralTile(
              icon: LineItUpIcons().location,
              title: translate(context, 'ordering_from'),
              subtitle: '12348 street, LA',
              trailing: LineItUpIcons().edit,
            ),
            SizedBox(height: context.mHeight * 0.02),
            GeneralTile(
              icon: LineItUpIcons().phone,
              title: translate(context, 'receiver_contact'),
              subtitle: '080803280208',
              trailing: LineItUpIcons().edit,
            ),
            SizedBox(height: context.mHeight * 0.02),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                onTap: () {
                  context.pushPage(const OrderListPage());
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

  Widget _buildLocationCard(
      BuildContext context, String title, String subtitle, Color color) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(15.6),
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          child: Text(
            title,
            style: LineItUpTextTheme()
                .body
                .copyWith(color: LineItUpColorTheme().white, fontSize: 12),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(14),
          width: context.mWidth * 0.46,
          decoration: BoxDecoration(
              color: LineItUpColorTheme().white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  subtitle,
                  style: LineItUpTextTheme().body.copyWith(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
