part of 'dashboard.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacings.defaultPadding),
      child: Column(
        children: [
          const _Header(),
          const SizedBox(
            height: AppSpacings.defaultPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 4,
                child: _MyFiles(),
              ),
              if (!Responsive.isMobile(MediaQuery.of(context).size.width))
                const SizedBox(
                  width: AppSpacings.defaultPadding,
                ),
              if (!Responsive.isMobile(MediaQuery.of(context).size.width))
                const Expanded(
                  flex: 2,
                  child: _StorageDetails(),
                )
            ],
          )
        ],
      ),
    );
  }
}
