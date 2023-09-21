import 'package:app_timekeeping/apps/untils/app_colors.dart';
import 'package:app_timekeeping/apps/untils/text_app.dart';
import 'package:flutter/material.dart';



class InputBody extends StatefulWidget {
  InputBody(
      {super.key,
      required this.label,
      required this.controller,
      required this.isPassword});
  final String label;
  TextEditingController controller = TextEditingController();
  final bool isPassword;

  @override
  State<InputBody> createState() => _InputBodyState();
}

class _InputBodyState extends State<InputBody> with InputValidationMixin {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return TextApp.errorNotEmpty;
        } else {
          if (widget.isPassword) {
            if (isPasswordValid(value)) {
              return null;
            }
            return TextApp.errorPassword;
          } else {
            if (isUserNameValid(value)) {
              return null;
            }
            return TextApp.errorUserName;
          }
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      obscureText: widget.isPassword ? _isObscure : false,
      cursorColor: AppColors.colorMain,
      decoration: InputDecoration(
        focusColor: AppColors.colorMain,
        hoverColor: AppColors.colorMain,
        fillColor: AppColors.colorMain,
        errorBorder: boderInput(),
        focusedErrorBorder: boderInput(),
        focusedBorder: boderInput(),
        enabledBorder: boderInput(),
        disabledBorder: boderInput(),
        border: boderInput(),
        hintText: widget.label,
        prefixIcon: !widget.isPassword
            ? const Icon(
                Icons.account_circle_outlined,
                color: Colors.grey,
              )
            : const Icon(
                Icons.lock_outline,
                color: Colors.grey,
              ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                })
            : null,
      ),
    );
  }

  OutlineInputBorder boderInput() => const OutlineInputBorder(
        borderSide: BorderSide(width: 1),
      );
}

mixin InputValidationMixin {
  bool isPasswordValid(String password) {
    Pattern pattern = r'^([^\s]{6,64})$';
    RegExp regex = RegExp(pattern.toString());
    return regex.hasMatch(password);
  }

  bool isUserNameValid(String userName) {
    Pattern pattern = r'^([^\s]{4,64})$';
    RegExp regex = RegExp(pattern.toString());
    return regex.hasMatch(userName);
  }
}
