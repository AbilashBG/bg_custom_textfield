import 'package:flutter/material.dart';

class BGCustomTextField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final int? maxLines;
  final int? minLines;
  final bool enabled;
  final bool readOnly;
  final TextAlign textAlign;
  final TextStyle? style;
  final InputBorder? border;
  final Color? fillColor;
  final bool filled;
  final FocusNode? focusNode;
  final VoidCallback? onTap;
  final TextCapitalization textCapitalization;

  const BGCustomTextField({
    super.key,
    this.hintText,
    this.labelText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
    this.onChanged,
    this.validator,
    this.maxLines = 1,
    this.minLines,
    this.enabled = true,
    this.readOnly = false,
    this.textAlign = TextAlign.start,
    this.style,
    this.border,
    this.fillColor,
    this.filled = false,
    this.focusNode,
    this.onTap,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  State<BGCustomTextField> createState() => _BGCustomTextFieldState();
}

class _BGCustomTextFieldState extends State<BGCustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      validator: widget.validator,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      textAlign: widget.textAlign,
      style: widget.style,
      focusNode: widget.focusNode,
      onTap: widget.onTap,
      textCapitalization: widget.textCapitalization,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        errorText: widget.errorText,
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        suffixIcon: widget.suffixIcon != null ? Icon(widget.suffixIcon) : null,
        border: widget.border ?? const UnderlineInputBorder(),
        filled: widget.filled,
        fillColor: widget.fillColor,
      ),
    );
  }
}
