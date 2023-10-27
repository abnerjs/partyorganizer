import 'package:flutter/material.dart';

class StyledTextField extends StatefulWidget {
  const StyledTextField({super.key, required this.label});

  final String label;

  @override
  State<StyledTextField> createState() => _StyledTextFieldState();
}

class _StyledTextFieldState extends State<StyledTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextField(
        cursorColor: Theme.of(context).colorScheme.secondaryContainer,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        decoration: InputDecoration(
          label: Text(widget.label),
          labelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          filled: true,
          fillColor:
              Theme.of(context).colorScheme.tertiaryContainer.withOpacity(0.1),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 8,
            bottom: 16,
          ),
        ),
      ),
    );
  }
}
