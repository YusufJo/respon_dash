part of '../dashboard.dart';

class _SearchField extends StatelessWidget {
  const _SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        fillColor: AppColors.secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppSizes.defaultCircularRadius),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSpacings.defaultPadding * 0.5),
          child: Material(
            color: AppColors.primaryColor,
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(10),
            type: MaterialType.button,
            elevation: 0,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.all(AppSpacings.defaultPadding * 0.75),
                child: SvgPicture.asset('assets/icons/Search.svg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
