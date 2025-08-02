import 'package:bookly_app/core/utils/bookly_styles.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final String? hintName;

  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onChanged;

  const SearchTextField({
    super.key,
    this.hintName = 'Search',
    this.onSubmitted,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    child: TextField(
      style: BooklyStyles.text18.copyWith(fontWeight: FontWeight.normal),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search_rounded, color: Colors.white),
        filled: true,
        fillColor: Colors.white10,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        hintText: hintName,
      ),
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.text,
    ),
  );
}