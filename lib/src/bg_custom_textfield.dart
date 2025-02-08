import 'package:flutter/material.dart';

/// A customizable text field widget for Flutter applications.
///
/// This widget extends [TextFormField] and provides additional customization
/// options such as icons, validation, and styling.
class BGCustomTextField extends StatefulWidget {
  /// The hint text displayed inside the text field.
  final String? hintText;

  /// The label text displayed above the text field.
  final String? labelText;

  /// An error message to display when validation fails.
  final String? errorText;

  /// A prefix icon to display inside the text field.
  final IconData? prefixIcon;

  /// A suffix icon to display inside the text field.
  final IconData? suffixIcon;

  /// Determines whether the text field obscures input (useful for passwords).
  final bool obscureText;

  /// The type of keyboard to display for text input.
  final TextInputType? keyboardType;

  /// A controller for managing the text field’s input.
  final TextEditingController? controller;

  /// A callback triggered when the text changes.
  final ValueChanged<String>? onChanged;

  /// A validation function for input validation.
  final FormFieldValidator<String>? validator;

  /// The maximum number of lines the text field can have.
  final int? maxLines;

  /// The minimum number of lines the text field can have.
  final int? minLines;

  /// Whether the text field is enabled or disabled.
  final bool enabled;

  /// Whether the text field is read-only.
  final bool readOnly;

  /// The alignment of the text within the text field.
  final TextAlign textAlign;

  /// The style of the text inside the text field.
  final TextStyle? style;

  /// The border style of the text field.
  final InputBorder? border;

  /// The background color of the text field.
  final Color? fillColor;

  /// Whether the text field should be filled with [fillColor].
  final bool filled;

  /// A focus node for handling focus-related events.
  final FocusNode? focusNode;

  /// A callback triggered when the text field is tapped.
  final VoidCallback? onTap;

  /// Determines how the text should be capitalized.
  final TextCapitalization textCapitalization;

  /// Creates a customizable text field.
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
