import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CommonFormField extends HookWidget {
  const CommonFormField({
    required this.onChange,
    required this.onFocusedChanged,
    this.isVisible,
    this.errorMessage,
    this.obscureText = false,
    this.labelText,
    this.textInputAction = TextInputAction.next,
    super.key,
  });

  final String? labelText;
  final Function(String) onChange;
  final Function(String) onFocusedChanged;
  final String? errorMessage;
  final bool obscureText;
  final TextInputAction textInputAction;
  final bool? isVisible;

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

    return isVisible ==true? TextField(
      focusNode: focusNode,
      controller: textController,
      onChanged: onChange,
      obscureText: obscureText,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorMessage,
      ),
    ):const SizedBox.shrink();
  }
}
