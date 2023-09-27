import 'package:flutter/material.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';
import 'call.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

//final _firestore = FirebaseFirestore.instance;

class _Home_pageState extends State<Home_page> {
  //final _auth = FirebaseAuth.instance;
  late String currentUserEmail;

  // void getCurrentUser() async {
  //   try {
  //     final user = await _auth.currentUser;
  //     if (user != null) {
  //       setState(() {
  //         currentUserEmail = user.email!;
  //       });
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  void initState() {
    super.initState();
    //getCurrentUser();
  }

  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          Call(),
          Container(
            color: Colors.black54,
          ),
          Container(
            color: Colors.purple,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: RollingBottomBar(
        color: Color.fromRGBO(255, 255, 255, 1),
        controller: _controller,
        flat: false,
        useActiveColorByDefault: false,
        items: [
          RollingBottomBarItem(Icons.dock,
              label: 'All Events', activeColor: Colors.purple),
          RollingBottomBarItem(Icons.add_box,
              label: 'Add Event', activeColor: Colors.purple),
          RollingBottomBarItem(Icons.home_rounded,
              label: 'Info', activeColor: Colors.purple),
          RollingBottomBarItem(Icons.person,
              label: 'Profile', activeColor: Colors.purple),
        ],
        enableIconRotation: true,
        onTap: (index) {
          _controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}
