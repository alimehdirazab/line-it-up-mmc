part of 'view.dart';

class LineSkipperYearlyStatisticsPage extends StatelessWidget {
  const LineSkipperYearlyStatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LineSkipperYearlyStatisticsView();
  }
}

class LineSkipperYearlyStatisticsView extends StatelessWidget {
  const LineSkipperYearlyStatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatisticsSummary(
            title: 'yearly_earnings',
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
