import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Image.network(
        'https://drissas.com/wp-content/uploads/2021/08/photo_thailande.jpeg');
    Widget titleSection = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              // Vos deux widgets Text
              Text(
                'Welcome to the Paradise',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
              Text(
                'Book your vacation at Thailand',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    );
    Widget hotelSection = Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
                'https://drissas.com/wp-content/uploads/2021/08/photo_thailande_1.jpeg'),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
                'https://drissas.com/wp-content/uploads/2021/08/photo_thailande_2.jpeg'),
          ),
        ],
      ),
    );
    Widget textSection = Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: const Text(
        '''
        Thailand, in long form the Kingdom of Thailand, is a country in Southeast Asia whose territory covers 514,000 km2. Before 1939, it was called the Kingdom of Siam. It is bordered to the west by Burma, to the south by Malaysia, to the east by Cambodia and to the northeast by Laos. It has been a constitutional monarchy since 1932.
        Its capital is Krung Thep, formerly called Bangkok. The official language is Thai and the currency is Baht. ''',

        softWrap: true,
      ),
    );
    Widget iconSection = Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Nos icônes à ajouter
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.hotel, color: Colors.cyan),
                const SizedBox(height: 5),
                Text(
                  'Hotels'.toUpperCase(),
                  style: TextStyle(color: Colors.cyan),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.airplanemode_active, color: Colors.cyan),
                const SizedBox(height: 5),
                Text(
                  'Plane'.toUpperCase(),
                  style: TextStyle(color: Colors.cyan),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.drive_eta, color: Colors.cyan),
                const SizedBox(height: 5),
                Text(
                  'Car'.toUpperCase(),
                  style: TextStyle(color: Colors.cyan),
                )
              ],
            ),
          )
        ],
      ),
    );
    Widget buttonSection = ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.cyan,
        textStyle: const TextStyle(fontSize: 20),
        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      child: const Text('More Rooms'),
      onPressed: () {},
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Travel To Thailande"),
          backgroundColor: Colors.cyan,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              imageSection,
              titleSection,
              textSection,
              iconSection,
              hotelSection,
              buttonSection
            ],
          ),
        ),
      ),
    );
  }
}
