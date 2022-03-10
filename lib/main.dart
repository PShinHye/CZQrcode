
import 'package:cz_qrcode/SJGeneral/SJBase/SJBaseRoute.dart';
import 'package:cz_qrcode/SJGeneral/SJBase/SJBaseTheme.dart';
import 'package:cz_qrcode/SJSections/SJHome/VC/SJHomeVC.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    /// initialize Screenutil
    return ScreenUtilInit (
      designSize: const Size(750, 1334),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: ()=> MaterialApp (

        debugShowCheckedModeBanner: false,
        theme: SJBaseTheme.lightTheme,
        // initialRoute: SJBaseRoute.initRoute,
        onGenerateRoute: routeGenerator,
        routes: SJBaseRoute.routes,
        builder: (BuildContext context, Widget? child) {

          ScreenUtil.setContext(context);

          return MediaQuery (
            /// set the font to not change with the system
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: FlutterEasyLoading (
              child: child,
            ),
          );
        },
      ),
    );
  }

  /// routing configuration
  Route routeGenerator(RouteSettings settings) {

    final String? name = settings.name;
    final Function? pageBuilder = SJBaseRoute.routes[name];
    if (pageBuilder != null) {
      if (settings.arguments != null) {
        /// if the parameters are transparently passed
        return MaterialPageRoute(
            builder: (context) => pageBuilder(context, arguments: settings.arguments));
      } else {
        /// no passthrough parameters
        return MaterialPageRoute(builder: (context) => pageBuilder(context));
      }
    }
    return MaterialPageRoute(builder: (context) => const SJHomeVC());
  }
}
