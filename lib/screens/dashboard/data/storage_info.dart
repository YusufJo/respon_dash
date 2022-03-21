part of '../dashboard.dart';

const _storageInfoData = [
  _StorageInfo(
      title: 'Document Files',
      iconPath: 'assets/icons/Documents.svg',
      numOfFiles: 1328,
      storageAmount: 15.3),
  _StorageInfo(
      title: 'Media Files',
      iconPath: 'assets/icons/media.svg',
      numOfFiles: 200,
      storageAmount: 10.7),
  _StorageInfo(
      title: 'Other Files',
      iconPath: 'assets/icons/folder.svg',
      numOfFiles: 930,
      storageAmount: 9.7),
  _StorageInfo(
      title: 'Unknown Files',
      iconPath: 'assets/icons/unknown.svg',
      numOfFiles: 400,
      storageAmount: 4.2),

];

class _StorageInfo {
  final String title;
  final String iconPath;
  final int numOfFiles;
  final double storageAmount;

  const _StorageInfo({
    required this.title,
    required this.iconPath,
    required this.numOfFiles,
    required this.storageAmount,
  });
}
