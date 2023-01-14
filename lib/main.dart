import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;
  List<int> numbers = [];

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  void onClick() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
          backgroundColor: const Color(0xFFF4EDDB),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                showTitle ? const MyTitle() : const Text(''),
                IconButton(
                    onPressed: toggleTitle,
                    icon: Icon(
                      showTitle
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                    )),
              ],
            ),
          )),
    );
  }
}

class MyTitle extends StatefulWidget {
  const MyTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyTitle> createState() => _MyTitleState();
}

class _MyTitleState extends State<MyTitle> {
  @override
  void initState() {
    super.initState();
    print('initState!');
  }

  @override
  void dispose() {
    print('dispose!');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build!');
    return Text(
      'My Title',
      style: TextStyle(
        fontSize: 28,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
