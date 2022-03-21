part of '../dashboard.dart';

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(MediaQuery.of(context).size.width))
          IconButton(
            onPressed: StartDrawerController.of(context).toggle,
            icon: const Icon(Icons.menu),
            splashRadius: AppSizes.defaultCircularRadius * 2,
          ),
        if (!Responsive.isDesktop(MediaQuery.of(context).size.width))
          const SizedBox(
            width: AppSpacings.defaultPadding,
          ),
        Text(
          'Dashboard',
          style: Theme.of(context).textTheme.headline6,
        ),
        const Spacer(),
        Expanded(
          flex: 4,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(
                  flex: 5,
                  child: _SearchField(),
                ),
                const SizedBox(
                  width: AppSpacings.defaultPadding,
                ),
                if (!Responsive.isMobile(MediaQuery.of(context).size.width))
                  const Expanded(flex: 4, child: _ProfileCard()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
