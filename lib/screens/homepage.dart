import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  //static data for subjects.

  List catName = [
    'Category',
    'Classes',
    'Free Course',
    'BookStore',
    'Live Course',
    'LeaderBoard'
  ];

  List<Color> catColors = [
    const Color(0xffffcf2f),
    const Color(0xff6fe08d),
    const Color(0xff61bdfd),
    const Color(0xfffc7f7f),
    const Color(0xffcb84fb),
    const Color(0xff78e667),
  ];

  List<Icon> catIcons = [
    const Icon(
      Icons.category,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.video_library,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.assessment,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.store,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.play_circle,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.emoji_events,
      color: Colors.white,
      size: 30,
    ),
  ];

  List imgList = [
    'Physics',
    'Chemistry',
    'Math',
    'Biology',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 15),
            decoration: const BoxDecoration(
              color: Color(0xFF674AEF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Hii, Student",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    wordSpacing: 2,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    //scrollPadding: EdgeInsets.only(top: 15),
                    decoration: const InputDecoration(
                      hintText: "Search here....",
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catName.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: catColors[index], shape: BoxShape.circle),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          catName[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        )
                      ],
                    );
                  },
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Courses',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: imgList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.height - 50 - 25) /
                            (4 * 240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 225, 221, 240),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              "images/${imgList[index]}.png",
                              width: 150,
                              height: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            imgList[index],
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          iconSize: 32,
          selectedItemColor: const Color(0xff674aef),
          selectedFontSize: 18,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.assessment), label: "Courses"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
