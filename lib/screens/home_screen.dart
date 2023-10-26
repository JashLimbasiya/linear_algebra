import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedItem = '';
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog(
            //show confirm dialogue
            //the return value will be from "Yes" or "No" options
            context: context,
            builder: (context) => AlertDialog(
              title: const Text(
                'Exit App',
                style: TextStyle(fontSize: 22),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              content: const Text(
                'Do you want to exit?',
                style: TextStyle(fontSize: 18),
              ),
              actions: [
                ExitButtonCard('Yes', true),
                ExitButtonCard('No', false)
              ],
            ),
          ) ??
          false;
    }

    return SafeArea(
      child: WillPopScope(
        onWillPop: showExitPopup, //call function on back button press
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
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Linear Algebra",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              actions: [
                PopupMenuButton(onSelected: (value) {
                  setState(() {
                    selectedItem = value.toString();
                  });
                  if (kDebugMode) {
                    print(value);
                  }
                  Navigator.pushNamed(context, value.toString());
                }, itemBuilder: (BuildContext bc) {
                  return [
                    PopupItem("Check for Updates", "/splash_screen"),
                    PopupItem("Feedback", "f"),
                    PopupItem("Share", "/splash_screen"),
                    PopupItem("Other Apps", "/splash_screen"),
                    PopupItem("About Us", "/splash_screen")
                  ];
                })
              ],
            ),
            body: Container(
              decoration: background(),
              child: GridView.count(
                padding: const EdgeInsets.only(
                    left: 10, top: 20, right: 10, bottom: 10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  cardView(
                      "Geometry", 'lib/assets/images/geometry/geometry.png',
                      () {
                    Navigator.pushNamed(context, 'g');
                  }),
                  cardView("Linear Systems",
                      'lib/assets/images/linear_system/linear_equation.png',
                      () {
                    Navigator.pushNamed(context, 'ls');
                  }),
                  cardView(
                      "Matrices", 'lib/assets/images/matrices/matrices.png',
                      () {
                    Navigator.pushNamed(context, 'm');
                  }),
                  cardView("Vector Spaces",
                      'lib/assets/images/vector_spaces/vector_spaces.png', () {
                    Navigator.pushNamed(context, 'vs');
                  }),
                ],
              ),
            )),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Card ExitButtonCard(String str, bool x) {
    return Card(
      color: Colors.red,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 8, right: 5),
      child: TextButton(
        onPressed: () => Navigator.of(context).pop(x),
        //return false when click on "NO"
        child: Text(
          str,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  PopupMenuItem PopupItem(String str, String val) {
    return PopupMenuItem(
      value: val,
      child: Text(str),
    );
  }
}
