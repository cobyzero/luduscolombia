import 'package:get/get_navigation/get_navigation.dart';
import 'package:luduscolombia/Views/Home/homeView.dart';
import 'package:luduscolombia/Views/Login/loginView.dart';

List<GetPage<dynamic>> routesApp() {
  return [
    GetPage(name: '/', page: () => LoginView()),
    GetPage(name: '/home', page: () => HomePage()),
  ];
}
