import 'package:flutter/material.dart';
import 'header.dart';
import 'content.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.message,
                  color: Colors.deepPurple,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notification_important,
                  color: Colors.deepPurple,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                )),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
        body: Column(
          children: [
            TabBar(
              isScrollable: true,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
               indicatorColor: Colors.transparent,
              tabs: <Widget>[
                Header(
                  title: "Attendence",
                  color: const Color(0xff9064d8),
                  isSelected: selectedIndex == 0,
                ),
                Header(
                  title: "Leave",
                  color: const Color(0xfff3af16),
                  isSelected: selectedIndex == 1,
                ),
                Header(
                  title: "Absent",
                  color: const Color(0xffdd4f50),
                  isSelected: selectedIndex == 2,
                ),
                Header(
                  title: "Class started",
                  color: const Color(0xff01b86b),
                  isSelected: selectedIndex == 3,
                ),
                Header(
                  title: "Delay",
                  color: const Color(0xffc44af1),
                  isSelected: selectedIndex == 4,
                ),
                Header(
                  title: "Bunk",
                  color: const Color(0xffb406a7),
                  isSelected: selectedIndex == 5,
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Content(
                    title:
                        "Hritik sharma is unable to attend the class. So, take action immediately.",
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff9064d8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Text('message'),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.messenger_outlined,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Text(
                                'Call',
                                style: TextStyle(
                                  color: Color(0xff9064d8),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.call,
                                color: Color(0xff9064d8),
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    color: const Color(0xffded1f4),
                    text: 'Teacher',
                  ),
                  Content(
                    title:
                        "Ramesh has requested leave. Reason : has requested leave. If you find it suitable , please approve his leave and assign a teacher.",
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xfff3af16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text('Accept'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Text(
                              'Grant',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Text(
                                'Call',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.black,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    color: const Color(0xfff5f05f),
                    text: 'Teacher',
                  ),
                  Content(
                    title:
                        "Ramesh is absent until now. ask him if he will come to school today or take a leave of absence?",
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffdd4f50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text('Assignment teacher'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Text(
                              'Off class',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                        OutlinedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                          ),
                          child: const Icon(
                            Icons.call,
                            color: Colors.black,
                            size: 15.0,
                          ),
                        ),
                      ],
                    ),
                    color: const Color(0xffef9393),
                    text: 'Teacher',
                  ),
                  Content(
                    title:
                        "Ramesh has started his class in section 5B, and he is currently teaching the topic 'Surrounding Us.'",
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff01b86b),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text('View class details'),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Text(
                                'Query',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.messenger,
                                color: Colors.black,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    color: const Color(0xff68febf),
                    text: 'Teacher',
                  ),
                  Column(
                    children: [
                      Content(
                        title:
                            "Ramesh is not present yet, and it seems like he may not be coming to school.",
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffc44af1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              child: const Text('Assign teacher'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            OutlinedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                child: const Text(
                                  'Off class ',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                )),
                            OutlinedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                              ),
                              child: const Icon(
                                Icons.call,
                                color: Colors.black,
                                size: 15.0,
                              ),
                            ),
                          ],
                        ),
                        color: const Color(0xffdfa6f5),
                        text: 'Teacher',
                      ),
                      Content(
                        title:
                            "Hritik sharma makes delay to start the lecture for class V - C. So, take action immediately.",
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffc44af1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              child: const Text('Assign teacher'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            OutlinedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                child: const Text(
                                  'Off class ',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                )),
                            OutlinedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                              ),
                              child: const Icon(
                                Icons.call,
                                color: Colors.black,
                                size: 15.0,
                              ),
                            ),
                          ],
                        ),
                        color: const Color(0xffdfa6f5),
                        text: 'Teacher',
                      ),
                    ],
                  ),
                  Content(
                    title:
                        "Raj a student in 5th section B, has missed the 5th period Science class. Investigate and find out the reason for the absence",
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffb406a7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Text('message'),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.messenger,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Text(
                              'find',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                            'ignore',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: const Color(0xffefa3eb),
                    text: 'Teacher',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
