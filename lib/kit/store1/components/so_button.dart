import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/store1/components/so_loading.dart';
import 'package:flutter_fly_kits/kit/store1/utils/so_colors.dart';

class SOButton extends StatelessWidget {
  const SOButton({super.key, required this.text, required this.onTap, required this.isLoading});
  final String text;
  final void Function() onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      splashColor: SOColors.primary,
      child: Container(
        width: double.infinity,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: SOColors.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: isLoading
            ? SOLoading()
            : Text(text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                )),
      ),
    );
  }
}
