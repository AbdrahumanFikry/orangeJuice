import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orange_juice/src/components/mainScreens/productsView.dart';

class MainBody extends StatelessWidget {
  final List<String> data = [
    'فواكه',
    'خضروات',
    'وريقات',
    'شعبيات',
    'لحوم',
    'دواجن',
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Expanded(
      child: Container(
        color: Colors.white,
        margin: const EdgeInsets.only(
          top: 15.0,
        ),
        child: DefaultTabController(
          length: data.length,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TabBar(
                indicatorColor: Colors.orange,
                tabs: data
                    .map(
                      (tab) => Column(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.apple,
                            color: Colors.grey,
                            size: screen.size.height > 600 ? 24.0 : 20.0,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            tab,
                            style: TextStyle(
                              fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
                indicatorWeight: 5.0,
                onTap: null,
                //TODO Change tab body ----------------
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
              ),
              ProductsView(),
            ],
          ),
        ),
      ),
    );
  }
}
