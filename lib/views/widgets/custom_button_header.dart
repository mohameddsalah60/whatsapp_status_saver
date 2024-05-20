import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButtonHeader extends StatelessWidget {
  const CustomButtonHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 60),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: ShapeDecoration(
                shape: const OvalBorder(),
                color: Colors.white.withOpacity(.09),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/whatsapp.svg',
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
