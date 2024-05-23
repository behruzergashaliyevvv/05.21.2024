import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uyishi/pages/galareya_page.dart';
import 'package:uyishi/pages/plitka_page.dart';
import 'package:uyishi/pages/spisok_page.dart';
import 'package:uyishi/widgets/home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 1900,
        color: Colors.grey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 54),
          child: Column(
            children: [
              Container(
                width: 380,
                height: 58,
                child: SizedBox(
                  child: TextField(
                    style: GoogleFonts.poppins(
                      color: const Color(0xff020202),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xfff1f1f1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Search for Items",
                      hintStyle: GoogleFonts.poppins(
                          color: const Color(0xffb2b2b2),
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5,
                          decorationThickness: 6),
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                          )),
                      prefixIconColor: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 48,
                // color: Colors.white,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(right: 15, left: 10),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "History",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_downward_outlined,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 300,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Download mestopolajeniya",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_downward_outlined,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "OLX - сервис обновлений №1 в ув...",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.5,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Показать Полностью",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "1000 dan ortiq maulumotlar",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.swap_vert_outlined,
                              color: Colors.black,
                            ),
                          ),
                          PopupMenuButton<int>(
                            itemBuilder: (BuildContext context) {
                              return <PopupMenuEntry<int>>[
                                PopupMenuItem(
                                  child: Text('Home'),
                                  value: 1,
                                ),
                                PopupMenuItem(
                                  child: Text('Galereya'),
                                  value: 2,
                                ),
                                PopupMenuItem(
                                  child: Text('Spisok'),
                                  value: 3,
                                ),
                                PopupMenuItem(
                                  child: Text('Plitka'),
                                  value: 4,
                                ),
                              ];
                            },
                            onSelected: (value) {
                              if (value == 1) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                              } else if (value == 2) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GalareyaPage()),
                                );
                              } else if (value == 3) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SpisokPage()),
                                );
                              } else if (value == 4) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PlitkaPage()),
                                );
                                
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              HomeWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
