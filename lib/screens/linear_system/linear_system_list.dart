import 'package:flutter/material.dart';

class LinearSystemList extends StatefulWidget {
  const LinearSystemList({super.key});

  @override
  State<LinearSystemList> createState() => _LinearSystemListState();
}

class _LinearSystemListState extends State<LinearSystemList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          shadowColor: Colors.red,
          backgroundColor: Colors.red,
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Linear System",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: GridView.count(
            padding:
                const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              cardView(
                  "One Variable",
                  'lib/assets/images/linear_system/x.png',
                  'gaussian_jorden'),
              cardView(
                  "Two Variable",
                  'lib/assets/images/linear_system/xy.png',
                  'gaussian_elimination'),
              cardView(
                  "Three Variable",
                  'lib/assets/images/linear_system/xyz.png',
                  'gaussian_elimination'),
            ],
          ),
        ),
      ),
    );
  }

  Card cardView(String str, String ico, String page) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 20,
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Center(
          child: Wrap(
            children: [
              Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 100, height: 100, child: Image.asset(ico))),
              Container(
                alignment: Alignment.center,
                child: Text(str,
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
              const SizedBox(height: 35),
            ],
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, page.toString());
        },
      ),
    );
  }
}
