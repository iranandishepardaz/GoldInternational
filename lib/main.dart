import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //Use to prevent overlap with status bar
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black,
    statusBarBrightness: Brightness.dark, // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gold International',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Gold International'),
      // home: WebViewExample(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Orientation currentOrientation;

  @override
  Widget build(BuildContext context) {
    // _openInWebview("https://www.goldinternational.com");
    return SafeArea(
      child: Scaffold(
          body: Builder(
        builder: (ctx) => SafeArea(
          child: WebviewScaffold(
            initialChild: const Center(
                child: CircleAvatar(
                    radius: 150,
                    backgroundColor: Colors.white70,
                    backgroundImage: AssetImage("assets/AppLogo.png"))),
            url: "https://goldinternationals.com/events/ship",
            //appBar: AppBar(title: Text(url),),
          ),
        ),
      )),
    );
  }
}
