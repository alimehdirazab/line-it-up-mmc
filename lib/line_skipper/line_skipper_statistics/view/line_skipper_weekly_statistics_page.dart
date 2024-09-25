part of 'view.dart';

class LineSkipperWeeklyStatisticsPage extends StatelessWidget {
  const LineSkipperWeeklyStatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LineSkipperWeeklyStatisticsView();
  }
}

class LineSkipperWeeklyStatisticsView extends StatelessWidget {
  const LineSkipperWeeklyStatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatisticsSummary(
            title: 'weekly_earnings',
            earning: 100.78,
            hoursWorked: 8,
            orders: 10,
            tip: 10,
            dropDownFilter: true,
          ),
        ],
      ),
    );
  }
}
