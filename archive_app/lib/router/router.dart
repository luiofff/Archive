import 'package:archive_app/screens/main/account.dart';
import 'package:archive_app/screens/main/document_list.dart';
import 'package:archive_app/screens/LogReg/index.dart';
import 'package:archive_app/screens/LogReg/login.dart';
import 'package:archive_app/screens/LogReg/registration.dart';
import 'package:archive_app/screens/order/by%D0%A1ourier/select_place.dart';
import 'package:archive_app/screens/order/inOffice/select_place.dart';
import 'package:archive_app/screens/order/index.dart';

final router = {
  '/' : (context) => const Documents(),
  '/account' : (context) => const Account(),
  '/logreg' : (context) => const LogReg(),
  '/login' : (context) => const Login(),
  '/registration': (context) => const Registration(),
  '/order': (context) => const SelectOrderType(),
  '/order/byCourier': (context) => const ByCourierMap(),
  '/order/inOffice': (context) => const InOfficeMap(),
};