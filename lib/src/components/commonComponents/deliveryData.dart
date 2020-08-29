import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/addressData.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';
import 'package:orange_juice/src/components/commonComponents/dropDownMenu.dart';
import 'package:orange_juice/src/components/commonComponents/inputBorderForm.dart';

class EditDeliveryData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10.0,
          ),
          child: Text(
            'بيانات التوصيل',
            style: TextStyle(
              fontSize: screen.size.height > 600 ? 18 : 16,
            ),
          ),
        ),
        CustomBlock(
          child: Column(
            children: <Widget>[
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (ctx, index) {
                  return AddressData();
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: CustomDropDownMenu(),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                      flex: 1,
                      child: CustomDropDownMenu(),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: InputBorderForm(
                      hintText: 'الحي',
                      readOnly: false,
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: InputBorderForm(
                      hintText: 'الشارع',
                      readOnly: false,
                    ),
                    flex: 2,
                  ),
                ],
              ),
              InputBorderForm(
                hintText: 'وصف المنزل',
                readOnly: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
