import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CommonFormField extends HookWidget {
  const CommonFormField({
    required this.labelText,
    required this.onChange,
    required this.onFocusedChanged,
    this.errorMessage,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    super.key,
  });

  final String labelText;
  final Function(String) onChange;
  final Function(String) onFocusedChanged;
  final String? errorMessage;
  final bool obscureText;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();
    final textController = useTextEditingController();

    useEffect(() {
      void handleFocusChange() {
        if (!focusNode.hasFocus) {
          onChange(textController.text);
        }
      }

      focusNode.addListener(handleFocusChange);
      return () => focusNode.removeListener(handleFocusChange);
    }, [focusNode]);

    return TextField(
      focusNode: focusNode,
      controller: textController,
      onChanged: onChange,
      obscureText: obscureText,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorMessage,
      ),
    );
  }
}
