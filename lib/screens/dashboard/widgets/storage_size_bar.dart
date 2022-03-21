part of '../dashboard.dart';
class _StorageSizeBar extends StatelessWidget {
  const _StorageSizeBar({
    Key? key,
    required this.storageService,
  }) : super(key: key);

  final StorageService storageService;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      clipBehavior: Clip.antiAlias,
      height: 5,
      width: double.infinity,
      decoration: BoxDecoration(
        color: storageService.color.withOpacity(0.1),
        borderRadius:
        BorderRadius.circular(AppSizes.defaultCircularRadius),
      ),
      child: FractionallySizedBox(
        widthFactor:
        storageService.usedStorage / storageService.totalStorage,
        child: Container(
          color: storageService.color,
        ),
      ),
    );
  }
}