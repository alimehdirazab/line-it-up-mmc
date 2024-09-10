part of 'view.dart';

class LineSkipperPage extends StatelessWidget {
  const LineSkipperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LineSkipperView();
  }
}

class LineSkipperView extends StatelessWidget {
  const LineSkipperView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          translate(context, 'line_skipper'),
          style: LineItUpTextTheme().body,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
    );
  }
}
