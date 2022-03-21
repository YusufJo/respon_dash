part of '../dashboard.dart';

class _MyFilesSummary extends StatelessWidget {
  final int cardsPerAxis;

  const _MyFilesSummary({
    Key? key,
    required this.cardsPerAxis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: _storageServicesData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: cardsPerAxis,
        mainAxisExtent: 175,
        mainAxisSpacing: AppSpacings.defaultPadding,
        crossAxisSpacing: AppSpacings.defaultPadding,
      ),
      itemBuilder: (BuildContext context, int index) => _StorageServiceCard(
        storageService: _storageServicesData[index],
      ),
    );
  }
}
