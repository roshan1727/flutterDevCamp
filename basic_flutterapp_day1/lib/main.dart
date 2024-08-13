import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(191, 0, 255, 1),
          title: const Text('growbinar'),
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(Icons.login),
            )
          ],
        ),
        drawer: Drawer(
          elevation: 25,
          child: ListView(
            children: [
              const DrawerHeader(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(204, 200, 62, 255)),
                  child: UserAccountsDrawerHeader(
                      accountName: Text(
                        'Nora',
                        style: TextStyle(fontSize: 18),
                      ),
                      currentAccountPicture: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fenglish.jagran.com%2Fweb-stories%2Fmrunal-thakur-most-loved-looks-from-sita-ramam-1418&psig=AOvVaw252-TfhfvshSvHmeCjWUS3&ust=1723556099565000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOiltPzI74cDFQAAAAAdAAAAABAf"),
                      ),
                      accountEmail: Text('norawaye@gmail.com'))),
              const ListTile(
                leading: Icon(Icons.people),
                title: Text('Our Team'),
              ),
              const ListTile(
                leading: Icon(Icons.list),
                title: Text('Mentee'),
              ),
              const ListTile(
                leading: Icon(Icons.add_task_rounded),
                title: Text('Mentor'),
              ),
              const DrawerButton(),
              TextButton(
                  onPressed: () {
                    print('helo sir u have clicked');
                  },
                  child: const Text('Login'))
            ],
          ),
        ),
        body: const Text('Vankam daa'),
      ),
    );
  }
}
