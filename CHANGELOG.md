## 0.0.1

## [0.0.1] - 2025-02-05 (or your release date)

### Added

*   **`BGCustomTextField` Widget Enhancement:** The `BGCustomTextField` widget has been significantly enhanced with a wide range of customizable properties, providing greater flexibility and control over its appearance and behavior.  Key additions include:
    *   Support for `labelText`, `errorText`, `prefixIcon`, and `suffixIcon` for richer visual presentation.
    *   Properties for `obscureText`, `keyboardType`, `maxLines`, `minLines`, `enabled`, `readOnly`, and `textAlign` to control functionality.
    *   `style`, `border`, `fillColor`, and `filled` properties for styling.
    *   `focusNode`, `onTap`, and `textCapitalization` for advanced control.
    *   Use of `TextFormField` for built-in form validation support.
    *   Default `UnderlineInputBorder` for a consistent look.

### Changed

*   **`BGCustomTextField` now uses `TextFormField`:** This change allows for form validation and better integration with form handling.

### Example Usage (Optional - if relevant, keep it concise)

```dart
BGCustomTextField(
  hintText: 'Enter your email',
  labelText: 'Email',
  prefixIcon: Icons.email,
  keyboardType: TextInputType.emailAddress,
  validator: (value) { /* ... */ },
  onChanged: (value) { /* ... */ },
)
