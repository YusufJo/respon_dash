part of '../dashboard.dart';

class _StorageDetails extends StatelessWidget {
  const _StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacings.defaultPadding),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius:
        BorderRadius.circular(AppSizes.defaultCircularRadius),
      ),
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              'Storage Details',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          const SizedBox(
            height: AppSpacings.defaultPadding,
          ),
          const _Chart(),
          const SizedBox(
            height: AppSpacings.defaultPadding,
          ),
          SeparatedColumn(
            children: _storageInfoData
                .map((e) => _StorageInfoCard(
                iconPath: e.iconPath,
                title: e.title,
                numOfFiles: e.numOfFiles,
                storageAmount: e.storageAmount))
                .toList(),
            separator: const SizedBox(
              height: AppSpacings.defaultPadding,
            ),
          ),
        ],
      ),
    );
  }
}