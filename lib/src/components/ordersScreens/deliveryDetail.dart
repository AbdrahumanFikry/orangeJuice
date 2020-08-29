import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';
import 'package:orange_juice/src/components/commonComponents/inputBorderForm.dart';

class DeliveryDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: Colors.green,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                'بيانات التوصيل',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: screen.size.height > 600 ? 22 : 18),
              ),
            ],
          ),
        ),
        CustomBlock(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                    child: InputBorderForm(
                      hintText: 'الرياض',
                      readOnly: true,
                    ),
                  ),
                  Flexible(
                    child: InputBorderForm(
                      hintText: 'الدمام',
                      readOnly: true,
                    ),
                  ),
                  Flexible(
                    child: InputBorderForm(
                      hintText: 'جده',
                      readOnly: true,
                    ),
                  ),
                ],
              ),
              InputBorderForm(
                hintText: 'الشارع',
                readOnly: true,
              ),
              InputBorderForm(
                hintText: 'وصف الشارع',
                readOnly: true,
              ),
            ],
          ),
        )
      ],
    );
  }
}
