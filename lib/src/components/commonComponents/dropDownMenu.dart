import 'package:flutter/material.dart';

class CustomDropDownMenu extends StatefulWidget {
  @override
  _CustomDropDownMenuState createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  String currentValue = 'مكه';
  List<String> items = [
    'القاهره',
    'المدينه',
    'مكه',
  ];

  void onChanged(value) {
    setState(() {
      currentValue = value;
    });
    FocusScope.of(context).requestFocus(new FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: SizedBox(
        height: 47.0,
        child: FormField<String>(
          builder: (FormFieldState<String> state) {
            return InputDecorator(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey[500],
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey[300],
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey[300],
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.grey[300],
                  ),
                ),
                errorStyle: TextStyle(
                  fontSize: 14.0,
                ),
                hintText: currentValue,
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: currentValue,
                  isDense: false,
                  onChanged: onChanged,
                  isExpanded: false,
                  hint: Text(
                    currentValue.toString(),
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                  iconDisabledColor: Colors.grey,
                  iconEnabledColor: Colors.grey,
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey[400],
                  ),
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: screen.size.height > 600 ? 16.0 : 14.0,
                  ),
                  items: items.map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              value,
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                              textAlign: TextAlign.end,
                            ),
                            Divider(
                              color: Colors.grey[300],
                              height: 5.0,
                              indent: 0.0,
                            ),
                          ],
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
