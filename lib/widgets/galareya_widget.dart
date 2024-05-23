import 'package:flutter/material.dart';

class MacBook {
  final String name;
  final String price;
  final String condition;
  final String location;
  final String date;
  final String imagePath;

  MacBook({
    required this.name,
    required this.price,
    required this.condition,
    required this.location,
    required this.date,
    required this.imagePath,
  });
}

class GalareyaWidget extends StatelessWidget {
  GalareyaWidget({super.key});

  final List<MacBook> macBooks = [
    MacBook(
      name: 'MacBook Air M1',
      price: '5 057 235 sum',
      condition: 'New',
      location: 'Toshkent Chilonzorski Rayon',
      date: '22 May 2024',
      imagePath: 'assets/images/mackbook.jpg',
    ),
    MacBook(
      name: 'MacBook Pro 14"',
      price: '8 000 000 sum',
      condition: 'Used',
      location: 'Toshkent Yunusobod Rayon',
      date: '20 May 2024',
      imagePath: 'assets/images/mackbook.jpg',
    ),
    MacBook(
      name: 'MacBook Pro 16"',
      price: '8 000 000 sum',
      condition: 'New',
      location: 'Toshkent Shayhontohur Rayon',
      date: '19 May 2024',
      imagePath: 'assets/images/mackbook.jpg',
    ),
    MacBook(
      name: 'MacBook Air 2020',
      price: '4 500 000 sum',
      condition: 'Used',
      location: 'Toshkent Mirzo Ulugbek Rayon',
      date: '18 May 2024',
      imagePath: 'assets/images/mackbook.jpg',
    ),
    MacBook(
      name: 'MacBook Pro 13"',
      price: '6 000 000 sum',
      condition: 'New',
      location: 'Toshkent Bektemir Rayon',
      date: '17 May 2024',
      imagePath: 'assets/images/mackbook.jpg',
    ),
    MacBook(
      name: 'MacBook Air 2019',
      price: '3 000 000 sum',
      condition: 'Used',
      location: 'Toshkent Uchtepa Rayon',
      date: '16 May 2024',
      imagePath: 'assets/images/mackbook.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: macBooks.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, // 2 items per row
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final macBook = macBooks[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset(
                      macBook.imagePath,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                macBook.name,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 90,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                macBook.condition,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            macBook.price,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                macBook.location,
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                macBook.date,
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
