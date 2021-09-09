
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled/HomeScreen.dart';
import 'package:untitled/cadastro.dart';
import 'package:untitled/login.dart';
import 'package:untitled/qrcobranca/leitura/scanner.dart';

import 'menulateral/model/navigation_item.dart';
import 'menulateral/page/favourites_page.dart';
import 'menulateral/page/header_page.dart';
import 'menulateral/page/notifications_page.dart';
import 'menulateral/page/people_page.dart';
import 'menulateral/page/plugins_page.dart';
import 'menulateral/page/updates_page.dart';
import 'menulateral/page/workflow_page.dart';
import 'menulateral/provider/navigation_provider.dart';
import 'qrcobranca/principal.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => NavigationProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SPTAM",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MainPage(),
    ),
  );
}
class MainPage extends StatefulWidget {
@override
_MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => buildPages();

  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.header:
        return CadastroUsuario();
      case NavigationItem.people:
        return PeoplePage();
      case NavigationItem.favourites:
        return FavouritesPage();
      case NavigationItem.workflow:
        return WorkflowPage();
      case NavigationItem.updates:
        return UpdatesPage();
      case NavigationItem.plugins:
        return PluginsPage();
      case NavigationItem.notifications:
        return NotificationsPage();
    }
  }
}





