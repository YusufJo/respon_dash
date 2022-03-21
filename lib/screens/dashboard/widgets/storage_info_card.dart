part of '../dashboard.dart';

class _StorageInfoCard extends StatelessWidget {
  final String iconPath;
  final String title;
  final int numOfFiles;
  final double storageAmount;

  const _StorageInfoCard({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.numOfFiles,
    required this.storageAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacings.defaultPadding),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(AppSizes.defaultCircularRadius)),
      child: Row(children: [
        SizedBox(
          width: 24,
          height: 24,
          child: SvgPicture.asset(
            iconPath,
            height: AppSizes.drawerIconsHeight,
          ),
        ),
        const SizedBox(
          width: AppSpacings.defaultPadding,
        ),
        Expanded(
          flex: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                '${NumberFormat.decimalPattern().format(numOfFiles)} Files',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ),
        const Spacer(),
        Text('${storageAmount}GB'),
      ]),
    );
  }
}
