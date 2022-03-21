part of '../dashboard.dart';

final _recentFilesData = [
  _RecentFile(
      iconPath: 'assets/icons/xd_file.svg',
      title: 'puppies.xd',
      date: DateTime.now(),
      sizeInBytes: 12435, fileType: 'Adobe XD file'),
  _RecentFile(
      iconPath: 'assets/icons/Figma_file.svg',
      title: 'ui.fig',
      date: DateTime.now(),
      sizeInBytes: 2435, fileType: 'Figma file'),
  _RecentFile(
      iconPath: 'assets/icons/doc_file.svg',
      title: 'notes.txt',
      date: DateTime.now(),
      sizeInBytes: 12435, fileType: 'Text file'),
  _RecentFile(
      iconPath: 'assets/icons/sound_file.svg',
      title: 'Fly me to the moon.mp3',
      date: DateTime.now(),
      sizeInBytes: 12435, fileType: 'Audio'),
  _RecentFile(
      iconPath: 'assets/icons/media_file.svg',
      title: 'Birthday.mp4',
      date: DateTime.now(),
      sizeInBytes: 12435, fileType: 'Video'),
  _RecentFile(
      iconPath: 'assets/icons/pdf_file.svg',
      title: 'report.pdf',
      date: DateTime.now(),
      sizeInBytes: 12435,
      fileType: 'PDF'),
  _RecentFile(
      iconPath: 'assets/icons/excel_file.svg',
      title: 'sales.csv',
      date: DateTime.now(),
      sizeInBytes: 12435,
      fileType: 'Spread sheet'),
];

class _RecentFile {
  final String iconPath;
  final String title;
  final DateTime date;
  final int sizeInBytes;
  final String fileType;

  const _RecentFile(
      {required this.iconPath,
      required this.title,
      required this.date,
      required this.sizeInBytes,
      required this.fileType});
}
