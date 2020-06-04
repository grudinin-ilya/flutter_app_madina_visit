import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gitfluttermadinavisit/src/ui/content_simple.dart';
import 'package:gitfluttermadinavisit/src/ui/content_with_location.dart';
import 'package:gitfluttermadinavisit/src/ui/home.dart';


class NavigationProvider with ChangeNotifier {
  String currentNavigation = "Home";

  Widget get getNavigation {
    if (currentNavigation == "p0") {
      return SimplePage("p0_");
    } else if (currentNavigation == "p1") {
      return Home();
    } else if (currentNavigation == "p2") {
      return Home();
    } else if (currentNavigation == "p3") {
      return Home();
    } else if (currentNavigation == "p4") {
      return Home();
    } else if (currentNavigation == "p5") {
      return Home();
    } else if (currentNavigation == "p6") {
      return Home();
    } else if (currentNavigation == "p7") {
      return PageWithLocation('المسجد+النبوي', '7_.jpg', 'p7_');
    } else if (currentNavigation == "p8") {
      return Home();
    } else if (currentNavigation == "p9") {
      return Home();
    } else if (currentNavigation == "p10") {
      return Home();
    } else if (currentNavigation == "p11") {
      return Home();
    } else if (currentNavigation == "p12") {
      return Home();
    } else if (currentNavigation == "p13") {
      return Home();
    } else if (currentNavigation == "p14") {
      return Home();
    } else if (currentNavigation == "p15") {
      return Home();
    } else if (currentNavigation == "p16") {
      return Home();
    } else if (currentNavigation == "p17") {
      return Home();
    } else if (currentNavigation == "p18") {
      return Home();
    } else if (currentNavigation == "p19") {
      return Home();
    } else if (currentNavigation == "p20") {
      return Home();
    } else if (currentNavigation == "p21") {
      return Home();
    } else if (currentNavigation == "p22") {
      return Home();
    } else if (currentNavigation == "p23") {
      return PageWithLocation('مسجد+قباء', '23_.jpg', 'p23_');
    } else if (currentNavigation == "p24") {
      return Home();
    } else if (currentNavigation == "p25") {
      return Home();
    } else if (currentNavigation == "p26") {
      return Home();
    } else if (currentNavigation == "p27") {
      return Home();
    } else if (currentNavigation == "p28") {
      return Home();
    } else if (currentNavigation == "p29") {
      return Home();
    } else if (currentNavigation == "p30") {
      return Home();
    } else if (currentNavigation == "p31") {
      return Home();
    } else if (currentNavigation == "p32") {
      return Home();
    } else if (currentNavigation == "p33") {
      return Home();
    } else if (currentNavigation == "p34") {
      return Home();
    } else if (currentNavigation == "p35") {
      return PageWithLocation('مسجد+القبلتين', '35_.jpg', 'p35_');
    } else if (currentNavigation == "p36") {
      return Home();
    } else if (currentNavigation == "p37") {
      return Home();
    } else if (currentNavigation == "p38") {
      return Home();
    } else if (currentNavigation == "p39") {
      return Home();
    } else if (currentNavigation == "p40") {
      return Home();
    } else if (currentNavigation == "p41") {
      return Home();
    } else if (currentNavigation == "p42") {
      return Home();
    } else if (currentNavigation == "p43") {
      return Home();
    } else if (currentNavigation == "p44") {
      return Home();
    } else if (currentNavigation == "p45") {
      return Home();
    } else if (currentNavigation == "p46") {
      return Home();
    } else if (currentNavigation == "p47") {
      return Home();
    } else if (currentNavigation == "p48") {
      return Home();
    } else if (currentNavigation == "p49") {
      return Home();
    } else if (currentNavigation == "p50") {
      return Home();
    } else if (currentNavigation == "p51") {
      return Home();
    } else if (currentNavigation == "p52") {
      return Home();
    } else if (currentNavigation == "p53") {
      return PageWithLocation('بئر+أريس', '53_.jpg', 'p53_');
    } else if (currentNavigation == "p54") {
      return Home();
    } else {
      return Home();
    }
  }

  void updateNavigation(String navigation) {
    currentNavigation = navigation;
    notifyListeners();
  }
}
