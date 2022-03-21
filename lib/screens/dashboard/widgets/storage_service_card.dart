part of '../dashboard.dart';

class _StorageServiceCard extends StatelessWidget {
  final StorageService storageService;

  const _StorageServiceCard({
    Key? key,
    required this.storageService,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacings.defaultPadding),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(AppSizes.defaultCircularRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(AppSpacings.defaultPadding * 0.7),
                decoration: BoxDecoration(
                  color: storageService.color.withOpacity(0.1),
                  borderRadius:
                      BorderRadius.circular(AppSizes.defaultCircularRadius),
                ),
                child: SvgPicture.asset(
                  storageService.svgIconPath,
                  color: storageService.color,
                ),
              ),
              const Spacer(),
              IconButton(
                splashRadius: 1,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: AppSpacings.defaultPadding,
          ),
          Text(
            storageService.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: AppSpacings.defaultPadding,
          ),
          _StorageSizeBar(storageService: storageService),
          const SizedBox(
            height: AppSpacings.defaultPadding,
          ),
          Row(
            children: [
              Text(
                '${NumberFormat.decimalPattern().format(storageService.numOfFiles)} Files',
                style: Theme.of(context).textTheme.caption,
              ),
              const Spacer(),
              Text('${storageService.usedStorage}GB'),
            ],
          ),
        ],
      ),
    );
  }
}
