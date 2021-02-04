import 'package:competey/presentation/home_screen.dart';
import 'package:competey/presentation/route_name_builder.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:competey/presentation/pages/activity_page.dart';
import 'package:competey/presentation/pages/log_activity_page.dart';
import 'package:competey/presentation/pages/groups_page.dart';
import 'package:competey/presentation/pages/activity_type_search_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:competey/presentation/pages/date_picker.dart';

void main() async {
  FluroRouter.appRouter
    ..define(
      '/',
      handler: Handler(
        handlerFunc: (context, params) => HomeScreen(),
      ),
    )
    ..define(
      RouteNameBuilder.activityResource,
      handler: Handler(
        handlerFunc: (context, params) => ActivityPage(),
      ),
    )
    ..define(
      RouteNameBuilder.logActivityResource,
      handler: Handler(
        handlerFunc: (context, params) => LogActivityPage(),
      ),
    )
    ..define(
      RouteNameBuilder.groupsResource,
      handler: Handler(
        handlerFunc: (context, params) => GroupsPage(),
      ),
    )
    ..define(
      RouteNameBuilder.activityTypeSearchResource,
      transitionType: TransitionType.inFromBottom,
      handler: Handler(
        handlerFunc: (context, params) => ActivityTypeSearchPage(),
      ),
    )
    ..define(RouteNameBuilder.datePickerResource,
        transitionType: TransitionType.inFromBottom,
        handler: Handler(
          handlerFunc: (context, params) => DatePicker(),
        ));

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Competey',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          accentColor: Color(0xFFDF4667),
          appBarTheme: AppBarTheme(
            color: Color(0xFF181923),
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Color(0xFFDF4667),
          ),
          canvasColor: Color(0xFF181923),
          scaffoldBackgroundColor: Color(0xFF181923),
          // scaffoldBackgroundColor: Color(0xFFB2EBF2),
        ),
        onGenerateRoute: (settings) => FluroRouter.appRouter
            .matchRoute(context, settings.name, routeSettings: settings)
            .route,
      );
}

//todo add functionality for arranging events (attendance)
