import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final String hintText;
  final String labelText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final bool isPassword;
  final bool isLoading;
  final bool editing;
  final String prefixIcon;
  final TextInputType keyboardType;

  const InputWidget({
    this.labelText,
    @required this.hintText,
    this.onSaved,
    this.validator,
    this.isPassword = false,
    this.isLoading = false,
    this.editing = false,
    this.prefixIcon,
    this.keyboardType,
  });

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: widget.editing ? Colors.white : Colors.grey[300],
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: widget.isLoading || widget.editing
                      ? Colors.white
                      : Colors.grey[300],
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: widget.isLoading || widget.editing
                      ? Colors.white
                      : Colors.orange,
                ),
              ),
              contentPadding: EdgeInsets.all(
                10.0,
              ),
              hintText: widget.editing ? null : widget.hintText,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: screen.size.height > 600 ? 18.0 : 16.0,
              ),
              errorStyle: TextStyle(
                color: Theme.of(context).errorColor,
              ),
              suffixIcon: widget.isLoading
                  ? null
                  : widget.isPassword
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                            size: 18.0,
                          ),
                        )
                      : null,
              prefixIcon: widget.prefixIcon == null
                  ? null
                  : Image.asset(
                      widget.prefixIcon,
                    ),
            ),
            initialValue: widget.editing ? widget.hintText : null,
            cursorColor: Colors.orange,
            obscureText: widget.isPassword ? _obscureText : false,
            readOnly: widget.isLoading ? true : false,
            onSaved: widget.onSaved,
            validator: widget.validator,
            keyboardType: widget.keyboardType,
            style: TextStyle(
              color: Colors.black,
              fontSize: widget.editing ? 16.0 : 14.0,
            ),
          ),
          SizedBox(
            height: widget.editing ? 0.0 : 15.0,
          ),
        ],
      ),
    );
  }
}
