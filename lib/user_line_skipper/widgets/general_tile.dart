part of 'widgets.dart';

class GeneralTile extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String subtitle;
  final IconData? trailing;
  final void Function()? onTap;
  const GeneralTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: LineItUpColorTheme().grey20,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: LineItUpColorTheme().black,
          ),
          title: Text(
            title,
            style: LineItUpTextTheme().body.copyWith(
                  fontSize: 12,
                  color: LineItUpColorTheme().black.withOpacity(0.5),
                ),
          ),
          subtitle: Text(
            subtitle,
            style: LineItUpTextTheme().body.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
          ),
          trailing: Icon(
            trailing,
            color: LineItUpColorTheme().black,
          ),
        ),
      ),
    );
  }
}
