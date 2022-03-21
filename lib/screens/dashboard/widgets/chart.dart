part of '../dashboard.dart';

class _Chart extends StatelessWidget {
  const _Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              sectionsSpace: 0,
              sections: [
                PieChartSectionData(
                  value: 14,
                  radius: 30,
                  showTitle: false,
                  color: Colors.blue,
                ),
                PieChartSectionData(
                    value: 10,
                    radius: 28,
                    showTitle: false,
                    color: Colors.cyan),
                PieChartSectionData(
                    value: 7,
                    radius: 26,
                    showTitle: false,
                    color: Colors.amber),
                PieChartSectionData(
                    value: 5, radius: 24, showTitle: false, color: Colors.red),
                PieChartSectionData(
                  value: 15,
                  radius: 22,
                  showTitle: false,
                  color: AppColors.bgColor,
                )
              ],
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Padding(
              padding: const EdgeInsets.all(AppSpacings.defaultPadding * 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '29.1',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white, height: 1),
                  ),
                  Text(
                    'of 128GB',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(height: 1),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
