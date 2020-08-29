import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';
import 'package:orange_juice/src/components/ordersScreens/orderDetail.dart';
import 'package:orange_juice/src/components/ordersScreens/orderStatus.dart';
import 'package:orange_juice/src/components/ordersScreens/representativeNotes.dart';
import 'package:orange_juice/src/components/ordersScreens/timeLineStatus.dart';

class CurrentOrderDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            title: Text(
              'الطلب الحالي',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20.0,
              ),
            ),
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            children: <Widget>[
              OrderDetail(
                finished: false,
              ),
              // TimeLine Data block ----------------
              OrderStatus(
                timeLine: [
                  TimeLineStatus(
                    title: 'تم إرسال الطلب',
                    subTitle:
                        'تم إرسال طلبك سيتم التواصل معك وارسال الطلبيه في الموقع المحدد في التطبيق',
                    icon: 'assets/iconsData/Document.png',
                  ),
                  TimeLineStatus(
                    title: 'المندوب في الطريق',
                    subTitle:
                        'مندوبنا في الطريق إليك الرجاء متابعه الطلب وتقييم الطلب وتقييم المندوب',
                    icon: 'assets/iconsData/Bike.png',
                  ),
                  TimeLineLastRawOrderStatus(
                    title: 'تم تسليم الطلبيه',
                    subTitle:
                        'قام مندوبنا بتسليم الطلبيه في الموقع المحدد وفي الزمن المحدد لإنهاء الطلب إضغط إنهاء',
                    icon: 'assets/iconsData/bag.png',
                  )
                ],
              ),
              // Representative notes block ----------------
              RepresentativeNotes(),
              const SizedBox(
                height: 10.0,
              ),
              OrangeJuiceButton(
                title: 'إنهاء الطلب',
                buttonColor: Colors.orange.withOpacity(0.5),
                onTap: () {
                  //TODO finish order ---------------
                },
              ),
              Center(
                child: Text(
                  'لا يتم تفعيل الطلب إلا بعد تسليم الطلبيه!',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: screen.size.height > 600 ? 18 : 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
