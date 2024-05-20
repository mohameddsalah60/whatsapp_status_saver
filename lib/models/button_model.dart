class ButtonModel {
  final String image, title;
  final void Function()? onTap;

  const ButtonModel({
    required this.image,
    required this.title,
    required this.onTap,
  });
}
