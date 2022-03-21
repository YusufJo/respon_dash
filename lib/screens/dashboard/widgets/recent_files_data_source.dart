part of '../dashboard.dart';

class _RecentFilesTableDataSource extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    final _RecentFile _recentFile = _recentFilesData[index];
    return DataRow.byIndex(
        color: index % 2 == 0
            ? MaterialStateProperty.all(AppColors.bgColor.withOpacity(0.4))
            : MaterialStateProperty.all(AppColors.secondaryColor),
        index: index,
        cells: [
          DataCell(
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppSizes.defaultCircularRadius),
                  ),
                  child: SvgPicture.asset(_recentFile.iconPath),
                ),
                const SizedBox(
                  width: AppSpacings.defaultPadding,
                ),
                Text(
                  _recentFile.title,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          DataCell(Text(DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY)
              .format(_recentFile.date))),
          DataCell(Text(filesize(_recentFile.sizeInBytes))),
          DataCell(Text(_recentFile.fileType)),
        ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _recentFilesData.length;

  @override
  int get selectedRowCount => 0;
}
