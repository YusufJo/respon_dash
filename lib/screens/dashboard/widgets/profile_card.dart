part of '../dashboard.dart';

class _ProfileCard extends StatelessWidget {
  static const imageRadius = 20.0;

  const _ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white10),
        borderRadius: BorderRadius.circular(AppSizes.defaultCircularRadius),
        color: AppColors.secondaryColor,
      ),
      child: ListTile(
        leading: const CircleAvatar(
          radius: imageRadius + 2,
          backgroundColor: Colors.white10,
          child: CircleAvatar(
            radius: imageRadius,
            backgroundColor: Colors.transparent,
            foregroundImage: AssetImage('assets/images/profile_pic.png'),
          ),
        ),
        title: const Text(
          'Jane Doe',
          overflow: TextOverflow.ellipsis,
        ),
        trailing: IconButton(
          splashRadius: AppSizes.defaultCircularRadius * 2,
          icon: const Icon(Icons.keyboard_arrow_down_outlined),
          onPressed: () {},
        ),
      ),
    );
  }
}
