part of '../dashboard.dart';

const _storageServicesData = [
  StorageService(
      title: 'Local Storage',
      svgIconPath: 'assets/icons/hard_disk.svg',
      totalStorage: 360,
      usedStorage: 12,
      numOfFiles: 1328,
      color: Colors.blue),
  StorageService(
      title: 'Google Drive',
      svgIconPath: 'assets/icons/google_drive.svg',
      totalStorage: 15,
      usedStorage: 2.9,
      numOfFiles: 403,
      color: Colors.amber),
  StorageService(
      title: 'One Drive',
      svgIconPath: 'assets/icons/one_drive.svg',
      totalStorage: 20,
      usedStorage: 16,
      numOfFiles: 3423,
      color: Colors.teal)
];

class StorageService {
  final String title;
  final String svgIconPath;
  final double totalStorage;
  final double usedStorage;
  final int numOfFiles;
  final Color color;

  const StorageService({
    required this.title,
    required this.svgIconPath,
    required this.totalStorage,
    required this.usedStorage,
    required this.numOfFiles,
    required this.color,
  });
}
