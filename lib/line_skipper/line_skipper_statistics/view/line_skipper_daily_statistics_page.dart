part of 'view.dart';

class LineSkipperDailyStatisticsPage extends StatelessWidget {
  const LineSkipperDailyStatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LineSkipperDailyStatisticsView();
  }
}

class LineSkipperDailyStatisticsView extends StatelessWidget {
  const LineSkipperDailyStatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    // X-axis labels for hours
    Widget bottomTitles(double value, TitleMeta meta) {
      const style = TextStyle(fontSize: 10);
      String text;
      switch (value.toInt()) {
        case 0:
          text = '1h';
          break;
        case 1:
          text = '2h';
          break;
        case 2:
          text = '3h';
          break;
        case 3:
          text = '4h';
          break;
        case 4:
          text = '5h';
          break;
        case 5:
          text = '6h';
          break;
        case 6:
          text = '7h';
          break;
        case 7:
          text = '8h';
          break;
        default:
          text = '';
          break;
      }
      return SideTitleWidget(
        axisSide: meta.axisSide,
        child: Text(text, style: style),
      );
    }

    // Y-axis labels (hidden)
    Widget leftTitles(double value, TitleMeta meta) {
      return const SizedBox(); // Hide Y-axis values
    }

    // Bar data for 8 hours
    List<BarChartGroupData> getData() {
      return List.generate(8, (index) {
        return BarChartGroupData(
          x: index,
          barRods: [
            BarChartRodData(
              toY: (index + 1) * (index + 2).toDouble(), // Random Y values
              width: 10,
              color: LineItUpColorTheme().primary,
            ),
          ],
        );
      });
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StatisticsSummary(
            title: 'daily_earnings',
            earning: 100.78,
            hoursWorked: 8,
            orders: 10,
            tip: 10,
          ),
          const SizedBox(height: 42),
          Expanded(
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.center,
                barTouchData: BarTouchData(
                  enabled: false,
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 28,
                      getTitlesWidget: bottomTitles,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false, // Hide Y-axis values
                      getTitlesWidget: leftTitles,
                    ),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  checkToShowHorizontalLine: (value) => value % 10 == 0,
                  getDrawingHorizontalLine: (value) => FlLine(
                    strokeWidth: 1,
                  ),
                  drawVerticalLine: false,
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                groupsSpace:
                    16, // Add space between the bars (increase for more space)
                barGroups: getData(), // Use generated data
              ),
            ),
          ),
        ],
      ),
    );
  }
}
