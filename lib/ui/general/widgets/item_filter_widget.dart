import 'package:flutter/material.dart';
import 'package:youtube_elyon_ccari/ui/general/colors.dart';

class ItemFilterWidget extends StatelessWidget {
  final String text;
  final bool isSelected;

  const ItemFilterWidget({
    required this.text,
    this.isSelected = false, // Agrega un valor predeterminado
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      child: Chip(
        backgroundColor: isSelected ? Colors.white : kBrandSecondaryColor,
        labelStyle: TextStyle(
          color: isSelected ? kBrandPrimaryColor : Colors.white,
        ),
        label: Text(
          text,
          style: TextStyle(fontSize: 14.0), // Ajusta el tamaño del texto según tus necesidades
        ),
      ),
    );
  }
}

