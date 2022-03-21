part of '../dashboard.dart';

class _MyFiles extends StatelessWidget {
  const _MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const Spacer(),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(AppSpacings.defaultPadding)),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add New'))
          ],
        ),
        const SizedBox(
          height: AppSpacings.defaultPadding,
        ),
        const Responsive(
          mobile: _MyFilesSummary(cardsPerAxis: 2),
          tablet: _MyFilesSummary(cardsPerAxis: 2),
          desktop: _MyFilesSummary(cardsPerAxis: 3),
        ),
        const SizedBox(
          height: AppSpacings.defaultPadding,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (Responsive.isMobile(MediaQuery.of(context).size.width))
              const _StorageDetails(),
            if (Responsive.isMobile(MediaQuery.of(context).size.width))
              const SizedBox(height: AppSpacings.defaultPadding),
            _RecentFilesTable(),
          ],
        ),
      ],
    );
  }
}
