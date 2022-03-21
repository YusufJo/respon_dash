part of '../dashboard.dart';

class _RecentFilesTable extends StatelessWidget {
  final _RecentFilesTableDataSource _dataSource = _RecentFilesTableDataSource();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
        cardTheme: CardTheme(
            color: AppColors.secondaryColor,
            margin: EdgeInsets.zero,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(AppSizes.defaultCircularRadius))),
      ),
      child: PaginatedDataTable(
        header: Text(
          'Recent Files',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        rowsPerPage: 5,
        columns: const [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Last Modified')),
          DataColumn(label: Text('Size')),
          DataColumn(label: Text('Type'))
        ],
        source: _dataSource,
      ),
    );
  }
}
