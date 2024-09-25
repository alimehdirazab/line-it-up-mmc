part of 'view.dart';

class LineSkipperMonthlyStatisticsPage extends StatelessWidget {
  const LineSkipperMonthlyStatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LineSkipperMonthlyStatisticsView();
  }
}

class LineSkipperMonthlyStatisticsView extends StatelessWidget {
  const LineSkipperMonthlyStatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatisticsSummary(
            title: 'monthly_earnings',
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
