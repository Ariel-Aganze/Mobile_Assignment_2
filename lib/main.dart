import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/calculator_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Calculator'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person), text: 'Sign Up'),
                Tab(icon: Icon(Icons.login), text: 'Login'),
                Tab(icon: Icon(Icons.calculate), text: 'Calculator'),
              ],
            ),
          ),
          drawer: MyDrawer(),
          body: TabBarView(
            children: [
              HomePage(),
              LoginPage(),
              CalculatorPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Jerome'),
            accountEmail: Text('jerome@email.com'),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Sign Up'),
                  onTap: () {
                    Navigator.pop(context);
                    DefaultTabController.of(context)?.animateTo(0);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.login),
                  title: Text('Login'),
                  onTap: () {
                    Navigator.pop(context);
                    DefaultTabController.of(context)?.animateTo(1);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.calculate),
                  title: Text('Calculator'),
                  onTap: () {
                    Navigator.pop(context);
                    DefaultTabController.of(context)?.animateTo(2);
                  },
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings & Account'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
