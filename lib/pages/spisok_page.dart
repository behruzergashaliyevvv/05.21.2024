import 'package:flutter/material.dart';
import 'package:uyishi/pages/galareya_page.dart';
import 'package:uyishi/pages/home_page.dart';
import 'package:uyishi/pages/plitka_page.dart';
import 'package:uyishi/widgets/spisok_widget.dart';

class SpisokPage extends StatefulWidget {
  const SpisokPage({super.key});

  @override
  State<SpisokPage> createState() => _SpisokPageState();
}

class _SpisokPageState extends State<SpisokPage> {
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
              SpisokWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
